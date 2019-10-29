import 'package:flutter/material.dart';

class AnimationsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations list'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('slide-transition-example');
              },
              child: Text('Slide transition example'),
            )
          ],
        ),
      ),
    );
  }
}
