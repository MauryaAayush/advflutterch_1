import 'package:flutter/material.dart';

class Hide_Screen extends StatelessWidget {
  const Hide_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            'Hiden Images',
            style: TextStyle(fontSize: 25),
          ),
        ),

        body: Column(
          children: [
            Divider(
              height: 3,
              thickness: 25,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
