import 'package:advflutterch_1/screens/first_page/Views/Switch_theme_Screen/part_2.dart';

import 'package:flutter/material.dart';

class Switch_Theme extends StatelessWidget {
  const Switch_Theme({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        themeMode: ThemeMode.system,
        theme: ThemeData().copyWith(
          secondaryHeaderColor: Colors.teal,
          primaryColor: Colors.grey,
          textTheme: TextTheme(
            labelLarge: TextStyle(
              fontSize: 50,
              color: Colors.black
            ),
           labelMedium: TextStyle(
             fontSize: 30,
             color: Colors.black
           ),
              titleLarge: TextStyle(
                  fontSize: 28
              ),
            titleMedium: TextStyle(
              fontSize: 22
            )
          )
        ),

        darkTheme: ThemeData.dark().copyWith(
          primaryColor: Colors.teal,
          secondaryHeaderColor: Colors.grey,
            textTheme: TextTheme(
                labelLarge: TextStyle(
                  fontSize: 50,
                ),
                labelMedium: TextStyle(
                    fontSize: 30
                ),
                titleLarge: TextStyle(
                    fontSize: 22
                ),
              titleMedium: TextStyle(
                fontSize: 28,
              )
            )
        ),
        color: Theme.of(context).primaryColor,

        home: const switch_theme_2());
  }
}
