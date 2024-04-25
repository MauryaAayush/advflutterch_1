import 'package:advflutterch_1/utils/global_variables.dart';
import 'package:flutter/material.dart';

class Stepper_first extends StatefulWidget {
  const Stepper_first({super.key});

  @override
  State<Stepper_first> createState() => _Stepper_firstState();
}

class _Stepper_firstState extends State<Stepper_first> {
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
            'Stepper Demo',
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
              Step(title: Text('Account'), content: Text('we are trying first')),
              Step(title: Text('Address'), content: Text('we are trying second')),
              Step(title: Text('Mobile Number'), content: Text('we are trying third')),

            ]));
  }
}
