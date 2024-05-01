import 'package:flutter/material.dart';

class Contact_Page extends StatelessWidget {
  const Contact_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,

        leading: Icon(Icons.arrow_back_ios,color: Colors.blue,),
        backgroundColor: Colors.white,
        title: Text("Contact Us",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 26,
          fontWeight: FontWeight.w900,
          letterSpacing: 1,
        ),),
      ),

      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
