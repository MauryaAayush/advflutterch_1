import 'package:advflutterch_1/screens/Gallery/Views/Gallery_Screen/Components/Gallery_Components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

        body: Column(
          children: [
            Divider(
              height: 3,
              thickness: 25,
              color: Colors.grey.shade300,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Album(),
                  Icon(Icons.search,size: 28,)
                ],
              ),
            ),

            Column(
              children: [
                Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                Text('Camera',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                )),
                Text('1,551',style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
                ),),
              ],
            ),
            
            // GridView.builder(gridDelegate: , itemBuilder: itemBuilder)
          ],
        ),
      ),
    );
  }


}
