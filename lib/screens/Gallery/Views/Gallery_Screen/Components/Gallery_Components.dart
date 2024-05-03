import 'package:flutter/material.dart';

Container Album() {
  return Container(
    alignment: Alignment.center,
    height: 35,
    width: 120,
    decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Albums',style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            fontWeight: FontWeight.w900,
            letterSpacing: 1
        ),),
        Icon(Icons.arrow_drop_down_outlined,color: Colors.blue,)
      ],
    ),
  );
}