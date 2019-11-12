import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('animations-example');
              },
              child: Text('Animations'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('listview-example');
              },
              child: Text('List view'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('canvas-example');
              },
              child: Text('Canvas'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('step-by-step');
              },
              child: Text('Step by step'),
            )
          ],
        ),
      ),
    );
  }
}
