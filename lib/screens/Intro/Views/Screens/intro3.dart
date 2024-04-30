import 'package:advflutterch_1/screens/Intro/Views/Screens/home_Screen.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro3'),
      ),

        body: Center(child: ElevatedButton(onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Home()));
        }, child: Text('Next')),)
    );
  }
}
