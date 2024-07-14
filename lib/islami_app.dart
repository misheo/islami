import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/theme/my_theme.dart';
import 'package:islami/features/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/features/quran/widgets/sura_details.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import 'features/ahdith/screens/hadith_details.dart';

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

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
        title: 'Material App',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(settingsProvider.language),
        routes: {
          '/': (context) => const HomeScreen(),
          SouraDetails.routeName: (context) =>  SouraDetails(),
          HadithDetails.routeName: (context) =>  HadithDetails(),
      
        },
      ),
    );
  }
}
