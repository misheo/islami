import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/theme/my_theme.dart';
import 'package:islami/features/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/quran/widgets/sura_details.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import 'core/helper/cash.dart';
import 'features/ahdith/screens/hadith_details.dart';

class IslamiApp extends StatefulWidget {
  const IslamiApp({super.key});

  @override
  State<IslamiApp> createState() => _IslamiAppState();
}

class _IslamiAppState extends State<IslamiApp> {
    Future<void> initLocals() async {
    String? lang = await Cash().getSelectedLanguage();
    debugPrint('InitLocals: Setting language to $lang');
    Provider.of<SettingsProvider>(context, listen: false).changeLanguage(lang ?? 'en');
    int? theme = await Cash().getSelectedTheme();
    debugPrint('InitLocals: Setting theme to $theme');
    Provider.of<SettingsProvider>(context, listen: false)
        .changeThemeMode(theme == 0 ? ThemeMode.light : ThemeMode.dark);
  }
    @override
  void initState() {
    super.initState();
    initLocals();
  }


  @override
  Widget build(BuildContext context) {
    //  FlutterNativeSplash.remove();
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return ScreenUtilInit(
      designSize: const Size(412, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:  MyTheme.lightTheme,
        darkTheme:  MyTheme.darkTheme,
        themeMode: settingsProvider.themeMode,
        
        title: 'Material App',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(settingsProvider.language),
        routes: {
          '/': (context) => const HomeScreen(),
          SouraDetails.routeName: (context) =>  const SouraDetails(),
          HadithDetails.routeName: (context) =>  const HadithDetails(),
      
        },
      ),
    );
  }
}
