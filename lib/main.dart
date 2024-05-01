import 'package:advflutterch_1/screens/Counter_App_using_Provider/Provider/Counter_Provider.dart';
import 'package:advflutterch_1/screens/Counter_App_using_Provider/Views/Counter_App/Counter_Screen.dart';
import 'package:advflutterch_1/screens/Intro/Provider/Intro_Provider.dart';
import 'package:advflutterch_1/screens/Intro/Views/Screens/home_Screen.dart';
import 'package:advflutterch_1/screens/Intro/Views/Screens/intro1.dart';
import 'package:advflutterch_1/screens/Stepper/Views/Stepper_1/Stepper_first.dart';
import 'package:advflutterch_1/screens/Stepper/Views/Stepper_2/Stepper_second.dart';
import 'package:advflutterch_1/screens/Theme_Change_Using_Provider/Provider/Theme_Change_Screen.dart';
import 'package:advflutterch_1/screens/Theme_Change_Using_Provider/Views/Change_Theme_Screen.dart';
import 'package:advflutterch_1/screens/first_page/Views/Switch_theme_Screen/Switch_theme_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CounterProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => IntroProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context, listen: true).isdark ? ThemeMode.dark:ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.white,
          primary: Colors.purple,
          secondary: Colors.green,
          tertiary: Colors.blue,
          scrim: Colors.deepOrange,
          surface: Colors.purple

        )
      ),
      darkTheme: ThemeData(
                colorScheme: ColorScheme.dark(
                  background: Colors.black,
                  primary: Colors.amber,
                  secondary: Colors.blue,
                  tertiary: Colors.pink,
                  scrim: Colors.yellow,
                  surface: Colors.amber
                )
      ),
      color: Theme.of(context).primaryColor,
      initialRoute: '/Intro',
      routes: {
        '/': (context) => const Switch_Theme(),
        '/stepper_first': (context) => const Stepper_first(),
        '/stepper_second': (context) => const Stepper_second(),
        '/Counter': (context) => const CounterScreen(),
        '/ThemeProvider': (context) => const ThemeChange(),
        '/Intro': (context) => Provider.of<IntroProvider>(context,listen: true).ischecked ? Home(): Intro1(),
      },
    );
  }
}
