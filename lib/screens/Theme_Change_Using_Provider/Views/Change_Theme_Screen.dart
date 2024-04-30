import 'package:advflutterch_1/screens/Theme_Change_Using_Provider/Provider/Theme_Change_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/src/material/icons.dart';

class ThemeChange extends StatelessWidget {
  const ThemeChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme App',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        actions: [Icon(Icons.add_circle_outline)],
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 75,
            ),
            Text(
              'Testing User',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.sunny),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Light Mode',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 140,
                ),
                Switch(
                  value: Provider.of<ThemeProvider>(context, listen: true)
                      .getThememode(),
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .themechange(value);
                  },
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.grid_on_rounded),
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
                Icon(Icons.settings),
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
                Icon(Icons.speaker_notes_outlined),
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
                Icon(Icons.notifications),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),

            SizedBox(height: 20,)
          ],
        ),
      )),
    );
  }
}
