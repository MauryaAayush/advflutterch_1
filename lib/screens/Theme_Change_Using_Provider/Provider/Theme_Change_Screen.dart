import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  bool isdark = false;

  bool getThemeMode() => isdark;

  Future<void> setData(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isDark', value);
    isdark = value;
    notifyListeners();
  }

  Future<void> getResponse() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getKeys().contains('isDark')) {
      isdark = preferences.getBool('isDark')!;
    } else {
      preferences.setBool('isDark', false);
      isdark = false;
    }
    notifyListeners();
  }

  ThemeProvider() {
    getResponse();
  }
}