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
          child: Text('Home Screen'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:  [
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/icons/quran_icon.png')),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/icons/hdith_icon.png')),
              label: AppLocalizations.of(context)!.ahdith,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/icons/sebha_icon.png')),
              label: AppLocalizations.of(context)!.tsbih,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage('assets/icons/radio_icon.png')),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: AppLocalizations.of(context)!.settings,
            ),
      

          ],
        ),
      ),
    );
  }
}
