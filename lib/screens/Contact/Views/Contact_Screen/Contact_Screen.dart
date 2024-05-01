import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class Contact_Page extends StatelessWidget {
  const Contact_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text(
                'If you have any quries, get in touch with us. we will be happy to help you!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                Uri url = Uri.parse('tel : +91 8604949240');
                launcher.launchUrl(url);
                },
                child: Container(
                  height: 65,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.blue.shade200, width: 1.5)),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.phone_android_outlined,
                        size: 35,
                        color: Colors.blue,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '+91 8604949240',
                        style:
                            TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Uri url = Uri.parse('sms : +91 8604949240');
                  launcher.launchUrl(url);
                },
                child: Container(
                  height: 65,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.blue.shade200, width: 1.5)),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.sms,
                        size: 35,
                        color: Colors.blue,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        '+91 8604949240',
                        style:
                            TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Uri url = Uri.parse('mailto : maayush235@gmail.com');
                  launcher.launchUrl(url);
                },
                child: Container(
                  height: 65,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: Colors.blue.shade200, width: 1.5)),
                  child: Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Icon(
                        Icons.mail_outline,
                        size: 35,
                        color: Colors.blue,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'maayush235@gmail.com',
                        style:
                            TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Container(
                height: 280,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue.shade200, width: 1.5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Social Media',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Divider(
                      color: Colors.blue.shade200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset('assets/images/github.png'),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Github',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Divider(
                        color: Colors.blue.shade200,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: Image.asset('assets/images/linkedinn.png'),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'linkedin',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
