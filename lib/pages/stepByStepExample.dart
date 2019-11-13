import 'package:flutter/material.dart';

class StepByStepExample extends StatefulWidget {
  @override
  _StepByStepExampleState createState() => _StepByStepExampleState();
}

class _StepByStepExampleState extends State<StepByStepExample> {
  int finishStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step by step example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('Step 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('Stepss 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('Stepssss 1'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text('Stepssssss 1'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: _renderSteps(4),
            ),
          ],
        ),
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
      a.add(_renderConnectLine(i, 50));
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
        color: i <= finishStep ? Colors.red : Colors.grey,
      ),
    );
  }

  _renderConnectLine(int i, double width) {
    return Container(
      height: 5,
      width: width,
      color: i <= finishStep ? Colors.red : Colors.grey,
    );
  }
}
