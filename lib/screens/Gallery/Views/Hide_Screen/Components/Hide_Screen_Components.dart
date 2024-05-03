import 'package:flutter/material.dart';

Container Hide_Container(String img) {
  return Container(
    margin: EdgeInsets.all(5),
    height: 50,
    width: 50,
    decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
  );
}


Padding Header() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Today',
            style:
            TextStyle(fontSize: 21, fontWeight: FontWeight.w600)),
        Text('Select',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
      ],
    ),
  );
}