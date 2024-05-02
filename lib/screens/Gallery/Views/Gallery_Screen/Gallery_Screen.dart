import 'package:flutter/material.dart';

class Gallery_Screen extends StatelessWidget {
  const Gallery_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
          leading: Icon(Icons.menu),
          title: Text('Gallery',style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}
