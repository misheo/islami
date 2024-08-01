import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami/islami_app.dart';
import 'package:provider/provider.dart';

import 'core/helper/cash.dart';
import 'providers/settings_provider.dart';

void main()async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Cash().init();

  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return SettingsProvider();
      },
      child: const IslamiApp()));
}
