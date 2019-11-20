import 'package:flutter/material.dart';

class ImagePickerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image picker example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('image-picker-default');
              },
              child: Text('Default picker'),
            )
          ],
        ),
      ),
    );
  }
}
