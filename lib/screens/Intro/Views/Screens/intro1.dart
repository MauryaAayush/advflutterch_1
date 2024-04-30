import 'package:advflutterch_1/screens/Intro/Views/Screens/intro2.dart';
import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Intro1"),
        ),
        body: Center(child: ElevatedButton(onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Intro2()),);
        }, child: Text('Next',style: TextStyle(
          fontSize: 25,
          color: Colors.white
        ),)),)

    );
  }
}
