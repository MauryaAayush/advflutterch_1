import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier
{
  bool ischecked = false;


  // set
  Future<void> setdata()
  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool( ischecked as String, true);
  }


  // get
Future<void> GetResponse()
async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isclicked = preferences.getBool(ischecked as String) ?? false;
}




}