import 'package:advflutterch_1/utils/Global_area.dart';
import 'package:flutter/material.dart';

class switch_theme_2 extends StatelessWidget {
  const switch_theme_2({super.key});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isdark ? Theme.of(context).secondaryHeaderColor : Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("Switch theme"),
        leading: Icon(Icons.menu),
        toolbarHeight: 70,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // InkWell(
          //   onTap: () {
          //     setState(() {
          //       isdark = true;
          //     }
          //     );
          //   },
          //   child:
            Container(
              margin: EdgeInsets.all(20),
              height: height * 0.1,
              // width: width*0.1,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child:  Text(
                'Switch light theme',
                style: TextStyle(fontSize: 25),
              ),
            ),
          // ),

          // InkWell(
          //   onTap: () {
          //     setState(() {
          //       isdark = false;
          //     });
          //   },
          //   child:
              Container(
              margin: EdgeInsets.all(20),
              height: height * 0.1,
              // width: width*0.1,
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Text(
                'Switch dark theme',
                style: TextStyle(fontSize: 25),
              ),
            ),
          // ),
        ],
      ),
    );
  }
}
