import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../core/theme/widgets/default_background.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../quran/quran_screen.dart';
import '../radio/radio_screen.dart';
import '../sebha/sebha_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  void onTap(int index) {
    setState(() {
      this.index = index;
    });
  }

  Widget setContent() {
    switch (index) {
      case 0:
        return const QuranScreen();
      case 1:
        return Container();
      case 2:
        return SebhaScreen();
      case 3:
        return const RadioScreen();
      case 4:
        return const RadioScreen();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    

    return DefaultBackground(
      child: Scaffold(
        // backgroundColor: Colors.transparent,

        body: setContent(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: onTap,
          items: [
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
