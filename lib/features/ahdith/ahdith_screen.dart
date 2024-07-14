import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/theme/my_colors.dart';
import '../../core/widgets/my_divider.dart';
import 'screens/hadith_details.dart';

class AhdithScreen extends StatefulWidget {
  const AhdithScreen({super.key});

  @override
  State<AhdithScreen> createState() => _AhdithScreenState();
}

class _AhdithScreenState extends State<AhdithScreen> {
  List<String> hadith = [];
  void loadHadithFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> lines = content.split('#\r\n');
    hadith = lines;
    setState(() {});}

  @override
  Widget build(BuildContext context) {
    loadHadithFile();
    return Column(
      children: [
        Image.asset('assets/images/hadith_image.png'),
        const MyDivider(
          thickness: 3,
        ),
        Text(AppLocalizations.of(context)!.ahdith,
            style: Theme.of(context).textTheme.titleLarge),
        const MyDivider(
          thickness: 3,
        ),
        hadith.isEmpty
            ? CircularProgressIndicator()
            : Expanded(
              child: ListView.separated(
                  itemBuilder: (itemBuilder, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context,HadithDetails.routeName , arguments: hadith[index]);   
                      }, 
                      child: Text(hadith[index].split('\n')[0] , style: Theme.of(context).textTheme.bodyLarge, textAlign:  TextAlign.center,));
                  },
                  separatorBuilder: (context, index) {
                    return const MyDivider(thickness: 1);
                  },
                  itemCount: hadith.length),
            )
        // ListView.builder(itemBuilder: (context, index) => ,)
      ],
    );
  }
}
