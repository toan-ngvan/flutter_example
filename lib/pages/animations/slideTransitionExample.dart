import 'package:flutter/material.dart';

class SlideTrasitionExample extends StatefulWidget {
  @override
  _SlideTrasitionExampleState createState() => _SlideTrasitionExampleState();
}

class _SlideTrasitionExampleState extends State<SlideTrasitionExample>
    with SingleTickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController controller;
  bool _isForward = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    animation =
        Tween<Offset>(begin: Offset(-1, 10), end: Offset(10, 10)).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.linear,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide transition examle'),
        centerTitle: true,
      ),
      body: SlideTransition(
        position: animation,
        child: Container(
          child: Icon(Icons.send),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_isForward) {
            controller.reverse();
          } else {
            controller.forward();
          }
          _isForward = !_isForward;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
