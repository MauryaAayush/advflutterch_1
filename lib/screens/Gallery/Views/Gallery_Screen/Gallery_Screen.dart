import 'package:advflutterch_1/screens/Gallery/Provider/Gallery_Provider.dart';
import 'package:advflutterch_1/screens/Gallery/Views/Gallery_Screen/Components/Gallery_Components.dart';
import 'package:advflutterch_1/screens/Gallery/Views/Hide_Screen/Hide_Screen.dart';
import 'package:advflutterch_1/utils/Gallery_Image_List.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

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
            PopupMenuButton<String>(
                onSelected: (String value) async {
                  if (value == 'Hide') {
                    if (await Provider.of<GalleryProvider>(context,
                            listen: false)
                        .check_Fingure_Print()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Hide_Screen(),
                      ));
                    }
                    else{
                      print('Failed to print');
                    }
                  }
                },
                itemBuilder: (context) => <PopupMenuEntry<String>>[
                      PopupMenuItem(
                        value: 'Hide',
                        child: Text('Hide'),
                      ),
                      PopupMenuItem(
                        value: 'Setting',
                        child: Text('Setting'),
                      ),
                    ])
          ],
          leading: Icon(Icons.menu),
          title: Text(
            'Gallery',
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
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Album(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Hide_Screen(),
                      ));
                    },
                    child: Icon(
                      Icons.search,
                      size: 28,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3 / 4),
                itemBuilder: (context, index) => Gallery_Gride_Views(
                  Gallery[index]['img'],
                  Gallery[index]['name'],
                  Gallery[index]['number'],
                ),
                itemCount: Gallery.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column Gallery_Gride_Views(String img, String name, int number) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15)),
        ),
        Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        Text(
          '$number',
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
