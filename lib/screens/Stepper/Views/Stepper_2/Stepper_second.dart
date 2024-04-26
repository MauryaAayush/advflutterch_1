import 'package:advflutterch_1/utils/global_variables.dart';
import 'package:flutter/material.dart';

class Stepper_second extends StatefulWidget {
  const Stepper_second({super.key});

  @override
  State<Stepper_second> createState() => _Stepper_secondState();
}

class _Stepper_secondState extends State<Stepper_second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Stepper Demo second',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          elevation: 10,
        ),
        body: Stepper(
          type: StepperType.horizontal,
            connectorColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
            // onStepContinue: ,
            currentStep: GlobalVariable.Stepperfirstindex,
            onStepContinue: () {
              setState(() {
                GlobalVariable.Stepperfirstindex =
                    (GlobalVariable.Stepperfirstindex + 1) % 3;
              });
            },
            onStepCancel: () {
              setState(() {
                if (GlobalVariable.Stepperfirstindex > 0) {
                  GlobalVariable.Stepperfirstindex--;
                }
              });
            },
            onStepTapped: (value) {
              setState(() {
                GlobalVariable.Stepperfirstindex = value;
              });
            },
            steps: [
              Step(


                title: Text('Personal'),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Your Fist Name',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(

                        labelText: 'Enter Your Last Name',
                      ),
                    ),
                  ],
                ),
              ),


              Step(

                title: Text('Contact'),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(

                        prefixIcon: Icon(Icons.email),
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        hintText: 'Address',
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        hintText: 'Mobile No',
                      ),
                    ),
                  ],
                ),
              ),


              Step(

                title: Text('Upload'),
                content: TextField(
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                  ),
                ),
              ),

            ]));
  }
}
