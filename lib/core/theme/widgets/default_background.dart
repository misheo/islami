import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DefaultBackground extends StatelessWidget {
  const DefaultBackground({super.key, required this.child, this.title});
  final Widget child;
  final String ? title ; 

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/light_bg.png',
        width: double.infinity,
        fit: BoxFit.fill,
        height: double.infinity,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(title ?? AppLocalizations.of(context)!.app_title),
          ),
          body: child)
    ]);
  }
}
