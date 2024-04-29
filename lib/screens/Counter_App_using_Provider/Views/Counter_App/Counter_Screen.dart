import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
      ),
      body: Center(
        child: Text('00',style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600
        ),),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add),),
    );
  }
}

