import 'package:advflutterch_1/screens/Intro/Views/Screens/intro3.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro2'),
      ),

        body: Center(child: ElevatedButton(onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Intro3()));
        }, child: Text('Next')),)
    );
  }
}
