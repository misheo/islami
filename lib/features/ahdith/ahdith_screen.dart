import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/theme/my_colors.dart';
import '../../core/theme/widgets/my_divider.dart';

class AhdithScreen extends StatelessWidget {
  const AhdithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/hadith_image.png') , 
        const MyDivider(
          thickness : 3,
        ),
        Text(AppLocalizations.of(context)!.ahdith , style: Theme.of(context).textTheme.titleLarge),  
         const MyDivider(
          thickness : 3,
        ),
        // ListView.builder(itemBuilder: (context, index) => ,)
      ],
    );
  }
}
