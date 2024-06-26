import 'package:advflutterch_1/utils/Global_area.dart';
import 'package:flutter/material.dart';

class switch_theme_2 extends StatefulWidget {
  const switch_theme_2({super.key});

  @override
  State<switch_theme_2> createState() => _switch_theme_2State();
}

class _switch_theme_2State extends State<switch_theme_2> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: isdark ? Colors.black12 : Colors.blue,
        centerTitle: true,
        title: Text("Switch Theme"),
        leading: Icon(Icons.menu),
        toolbarHeight: 70,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('YO Man!',style: Theme.of(context).textTheme.labelLarge,),
          Text(" It's simple example of",style: Theme.of(context).textTheme.labelMedium,),
          Text('dark theme',style: Theme.of(context).textTheme.labelMedium,),

          SizedBox(height: height*0.1,),

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
                'Light theme',
                style: TextStyle(
                fontSize: 28
                )
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
                'Dark theme',
                style: TextStyle(
                  fontSize: 28
                )
              ),
            ),
          // ),
        ],
      ),
    );
  }
}
