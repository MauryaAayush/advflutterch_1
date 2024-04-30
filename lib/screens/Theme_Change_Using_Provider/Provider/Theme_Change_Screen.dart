import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isdark = false;

  // bool getThememode() => isdark;

  themechange(bool value) {
    isdark = value;
    notifyListeners();
  }
}
