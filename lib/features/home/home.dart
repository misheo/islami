import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../core/theme/widgets/default_background.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
     FlutterNativeSplash.remove();

    return DefaultBackground(
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title ),
        ),
        body: Center(
          child: Text('HomeScreen'),
        ),
      ),
    );
  }
}
