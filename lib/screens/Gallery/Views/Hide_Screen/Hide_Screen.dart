import 'package:advflutterch_1/screens/Gallery/Views/Hide_Screen/Components/Hide_Screen_Components.dart';
import 'package:advflutterch_1/utils/Hide_List.dart';
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

            // GridView.builder(gridDelegate: gridDelegate)

            Header(),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemBuilder: (context, index) => Hide_Container(Hide[index]),
                itemCount: Hide.length,
              ),
            ),
            Header(),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                itemBuilder: (context, index) => Hide_Container(Hide1[index]),
                itemCount: Hide1.length,
              ),
            ),
          ],
        ),
      ),
    );
  }





}
