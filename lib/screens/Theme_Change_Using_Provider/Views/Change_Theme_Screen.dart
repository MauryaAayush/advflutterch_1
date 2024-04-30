import 'package:advflutterch_1/screens/Theme_Change_Using_Provider/Provider/Theme_Change_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'Theme App',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.add_circle_outline),
          ),
        ],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 75,
              foregroundImage: AssetImage('assets/images/avtar.png'),
            ),
            Text(
              'Aayush',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Provider.of<ThemeProvider>(context, listen: true).isdark
                      ? Icons.nightlight
                      : Icons.sunny,
                  color: Theme.of(context).colorScheme.primary,
                  size: 30,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  Provider.of<ThemeProvider>(context, listen: true).isdark
                      ? "Dark Mode"
                      : "Light Mode",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 120,
                ),
                Switch(
                  inactiveThumbColor: Colors.white,
                  value:
                      Provider.of<ThemeProvider>(context, listen: true).isdark,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .themechange(value);
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.grid_on_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Story',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 30,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Settings and Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.speaker_notes_outlined,
                  color: Theme.of(context).colorScheme.scrim,
                  size: 30,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Help center',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: Theme.of(context).colorScheme.surface,
                  size: 30,
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}
