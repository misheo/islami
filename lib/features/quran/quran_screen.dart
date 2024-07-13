import 'package:flutter/material.dart';
import 'package:islami/core/theme/widgets/default_background.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../core/theme/my_colors.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text(AppLocalizations.of(context)!.quran)),
          body: Column(
    children: [
      Center(child: Image.asset('assets/images/quran_logo.png')),
      const Divider(color: MyColors.primaryLightColor, thickness: 3),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(AppLocalizations.of(context)!.sura_name),
          Text(AppLocalizations.of(context)!.number_of_verses),
        ],
      ),
      const Divider(color: MyColors.primaryLightColor, thickness: 3),
    ],
          ),
        );
  }
}
