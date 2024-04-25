import 'package:advflutterch_1/screens/first_page/Views/Switch_theme_Screen/Switch_theme_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      routes: {
        '/' : (context) => const Switch_Theme(),

      },

    );
  }
}

