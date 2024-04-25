import 'package:advflutterch_1/screens/first_page/Views/Switch_theme_Screen/part_2.dart';

import 'package:flutter/material.dart';

class Switch_Theme extends StatelessWidget {
  const Switch_Theme({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        themeMode: ThemeMode.system,
        theme: ThemeData.light().copyWith(
          secondaryHeaderColor: Colors.teal,
          primaryColor: Colors.grey,
          textTheme: TextTheme(
            labelLarge: TextStyle(
              fontSize: 40,
            ),
           titleMedium: TextStyle(
             fontSize: 35
           )
          )
        ),
        darkTheme: ThemeData.dark().copyWith(
          primaryColor: Colors.teal,
          secondaryHeaderColor: Colors.grey,
            textTheme: TextTheme(
                labelLarge: TextStyle(
                  fontSize: 40,
                )
            )
        ),
        color: Theme.of(context).primaryColor,

        home: const switch_theme_2());
  }
}
