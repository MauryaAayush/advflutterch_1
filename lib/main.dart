import 'package:advflutterch_1/screens/Stepper/Views/Stepper_1/Stepper_first.dart';
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

      themeMode: ThemeMode.system,
      theme: ThemeData().copyWith(
          secondaryHeaderColor: Colors.teal,
          primaryColor: Colors.grey,
          // textTheme: TextTheme(
          //     labelLarge: TextStyle(
          //         fontSize: 20,
          //         color: Colors.black
          //     ),
          //     labelMedium: TextStyle(
          //         fontSize: 20,
          //         color: Colors.black
          //     ),
          //     titleLarge: TextStyle(
          //         fontSize: 20
          //     ),
          //     titleMedium: TextStyle(
          //         fontSize: 22
          //     )
          // )
      ),

      darkTheme: ThemeData.dark().copyWith(
          primaryColor: Colors.teal,
          secondaryHeaderColor: Colors.grey,
          // textTheme: TextTheme(
          //     labelLarge: TextStyle(
          //       fontSize: 20,
          //     ),
          //     labelMedium: TextStyle(
          //         fontSize: 20
          //     ),
          //     titleLarge: TextStyle(
          //         fontSize: 22
          //     ),
          //     titleMedium: TextStyle(
          //       fontSize: 28,
          //     )
          // )
      ),
      color: Theme.of(context).primaryColor,


      initialRoute: '/stepper_first',

      routes: {
        '/' : (context) => const Switch_Theme(),
        '/stepper_first' : (context) => const Stepper_first(),
        '/stepper_second' : (context) => const Switch_Theme(),

      },

    );
  }
}

