import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({super.key, required this.child, this.title});
  final Widget child;
  final String ? title ; 

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Stack(children: [
      provider.isLightMode ?
      Image.asset(
        'assets/images/light_bg.png',
        width: double.infinity,
        fit: BoxFit.fill,
        height: double.infinity,
      ): Image.asset(
        'assets/images/bg.png',
        width: double.infinity,
        fit: BoxFit.fill,
        height: double.infinity,
      ) ,
      Scaffold(
          appBar: AppBar(
            title: Text(title ?? AppLocalizations.of(context)!.app_title),
          ),
          body: child)
    ]);
  }
}
