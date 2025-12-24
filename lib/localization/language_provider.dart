import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier {
  Locale _selectedLocale = const Locale('en', 'US');
  
  Locale get selectedLocale => _selectedLocale;

  void changeLanguage(Locale newLocale) {
    _selectedLocale = newLocale;
    notifyListeners();
  }

  String get languageCode => _selectedLocale.languageCode;
}