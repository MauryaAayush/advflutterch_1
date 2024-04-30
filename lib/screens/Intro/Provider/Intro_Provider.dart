import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier
{
  bool ischecked = false;

  Future<void> setdata()
  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool( ischecked as String, true);
  }
}