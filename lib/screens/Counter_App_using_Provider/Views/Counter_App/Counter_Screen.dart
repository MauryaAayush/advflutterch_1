import 'package:advflutterch_1/screens/Counter_App_using_Provider/Provider/Counter_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter App',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Text(
          Provider.of<CounterProvider>(context,listen: true).count.toString(),
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context,listen: false).increment();
          CounterProvider().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
