import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('listview-controller-example');
              },
              child: Text('Listview controller'),
            )
          ],
        ),
      ),
    );
  }
}
