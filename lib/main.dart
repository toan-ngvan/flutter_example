import 'package:flutter/material.dart';

import 'package:flutter_example/pages/home.dart';
import 'routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      home: Home(),
    );
  }
}
