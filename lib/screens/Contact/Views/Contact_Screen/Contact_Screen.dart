import 'package:flutter/material.dart';

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
              Container(
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue.shade200,
                    width: 1.5
                  )
                ),
                child: Row(

                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(Icons.phone_android_outlined,size: 35,color: Colors.blue,),
                    Spacer(
                      flex: 1,
                    ),
                    Text('+91 8604949240',style: TextStyle(fontSize: 19,
                    fontWeight: FontWeight.w500),),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 65,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.blue.shade200,
                        width: 1.5
                    )
                ),
                child: Row(

                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Icon(Icons.mail_outline,size: 35,color: Colors.blue,),
                    Spacer(
                      flex: 1,
                    ),
                    Text('maayush235@gmail.com',style: TextStyle(fontSize: 19,
                        fontWeight: FontWeight.w500),),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 450,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.blue.shade200,
                        width: 1.5
                    )
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
