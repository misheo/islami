import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami/islami_app.dart';
import 'package:provider/provider.dart';

import 'providers/settings_provider.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return SettingsProvider();
      },
      child: const IslamiApp()));
}
