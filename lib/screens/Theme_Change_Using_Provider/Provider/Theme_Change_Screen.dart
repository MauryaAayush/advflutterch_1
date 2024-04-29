import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isdark = false;

  themechange(bool value) {
    isdark = value;
    notifyListeners();
  }
}
