import 'package:advflutterch_1/screens/Theme_Change_Using_Provider/Provider/Theme_Change_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
            value: Provider.of<ThemeProvider>(context,listen: true).getThememode(),
            onChanged: (value) {
              Provider.of<ThemeProvider>(context,listen: false).themechange(value);
            },

        ),
      ),
    );
  }
}
