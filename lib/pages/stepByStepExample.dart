import 'package:flutter/material.dart';

class StepByStepExample extends StatefulWidget {
  @override
  _StepByStepExampleState createState() => _StepByStepExampleState();
}

class _StepByStepExampleState extends State<StepByStepExample> {
  int finishStep = 0;

  @override
  Widget build(BuildContext context) {
    print('============');
    print('abc');
    print('============');
    return Scaffold(
      appBar: AppBar(
        title: Text('Step by step example'),
        centerTitle: true,
      ),
      body: Row(
        children: _renderSteps(4),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            finishStep += 1;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }

  List<Widget> _renderSteps(int step) {
    List<Widget> a = [];
    a.add(_renderStep(1));
    for (var i = 2; i <= step; i++) {
      a.add(_renderConnectLine(i));
      a.add(_renderStep(i));
    }
    return a.toList();
  }

  _renderStep(int i) {
    return Container(
      child: Align(
        child: Text(
          i.toString(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      height: 30,
      width: 30,
      // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
        color: i <= finishStep ? Colors.red : Colors.grey,
      ),
    );
  }

  _renderConnectLine(int i) {
    return Container(
      height: 5,
      width: 20,
      color: i <= finishStep ? Colors.red : Colors.grey,
    );
  }
}
