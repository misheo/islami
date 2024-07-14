import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String language = 'en';

  void changeLanguage(String newLanguage) {
    language = newLanguage;
    notifyListeners();
  }
}