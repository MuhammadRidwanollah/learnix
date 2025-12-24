import 'dart:async';
import 'package:flutter/material.dart';

class AppLocalizations {
  static const List<String> supportedLocales = ['en', 'id'];

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String get title {
    return _localizedValues['title'] ?? '';
  }

  String get welcomeBack {
    return _localizedValues['welcomeBack'] ?? '';
  }

  String get signInToContinue {
    return _localizedValues['signInToContinue'] ?? '';
  }

  String get email {
    return _localizedValues['email'] ?? '';
  }

  String get password {
    return _localizedValues['password'] ?? '';
  }

  String get forgotPassword {
    return _localizedValues['forgotPassword'] ?? '';
  }

  String get signIn {
    return _localizedValues['signIn'] ?? '';
  }

  String get createNewAccount {
    return _localizedValues['createNewAccount'] ?? '';
  }

  String get createAccount {
    return _localizedValues['createAccount'] ?? '';
  }

  String get fullName {
    return _localizedValues['fullName'] ?? '';
  }

  String get confirmPassword {
    return _localizedValues['confirmPassword'] ?? '';
  }

  String get alreadyHaveAccount {
    return _localizedValues['alreadyHaveAccount'] ?? '';
  }

  String get home {
    return _localizedValues['home'] ?? '';
  }

  String get learning {
    return _localizedValues['learning'] ?? '';
  }

  String get notifications {
    return _localizedValues['notifications'] ?? '';
  }

  String get profile {
    return _localizedValues['profile'] ?? '';
  }

  String get myCourses {
    return _localizedValues['myCourses'] ?? '';
  }

  String get assignments {
    return _localizedValues['assignments'] ?? '';
  }

  String get grades {
    return _localizedValues['grades'] ?? '';
  }

  String get resources {
    return _localizedValues['resources'] ?? '';
  }

  String get language {
    return _localizedValues['language'] ?? '';
  }

  String get settings {
    return _localizedValues['settings'] ?? '';
  }

  String get logout {
    return _localizedValues['logout'] ?? '';
  }

  Map<String, String> get _localizedValues {
    if (_locale.languageCode == 'id') {
      return _indonesianValues;
    } else {
      return _englishValues;
    }
  }

  late Locale _locale;

  AppLocalizations(this._locale);
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizations.supportedLocales.contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}

Map<String, String> _englishValues = {
  'title': 'Learnix',
  'welcomeBack': 'Welcome Back',
  'signInToContinue': 'Sign in to continue',
  'email': 'Email',
  'password': 'Password',
  'forgotPassword': 'Forgot Password?',
  'signIn': 'Sign In',
  'createNewAccount': 'Create a new account',
  'createAccount': 'Create Account',
  'fullName': 'Full Name',
  'confirmPassword': 'Confirm Password',
  'alreadyHaveAccount': 'Already have an account? Sign In',
  'home': 'Home',
  'learning': 'Learning',
  'notifications': 'Notifications',
  'profile': 'Profile',
  'myCourses': 'My Courses',
  'assignments': 'Assignments',
  'grades': 'Grades',
  'resources': 'Resources',
  'language': 'Language',
  'settings': 'Settings',
  'logout': 'Logout',
};

Map<String, String> _indonesianValues = {
  'title': 'Learnix',
  'welcomeBack': 'Selamat Datang Kembali',
  'signInToContinue': 'Masuk untuk melanjutkan',
  'email': 'Email',
  'password': 'Kata Sandi',
  'forgotPassword': 'Lupa Kata Sandi?',
  'signIn': 'Masuk',
  'createNewAccount': 'Buat akun baru',
  'createAccount': 'Buat Akun',
  'fullName': 'Nama Lengkap',
  'confirmPassword': 'Konfirmasi Kata Sandi',
  'alreadyHaveAccount': 'Sudah memiliki akun? Masuk',
  'home': 'Beranda',
  'learning': 'Pembelajaran',
  'notifications': 'Notifikasi',
  'profile': 'Profil',
  'myCourses': 'Kursus Saya',
  'assignments': 'Tugas',
  'grades': 'Nilai',
  'resources': 'Sumber',
  'language': 'Bahasa',
  'settings': 'Pengaturan',
  'logout': 'Keluar',
};