import 'package:flutter/material.dart';
// Animation
import 'package:flutter_example/pages/animationsExample.dart';
import 'package:flutter_example/pages/animations/slideTransitionExample.dart';
// Listview
import 'package:flutter_example/pages/listviewExample.dart';
import 'package:flutter_example/pages/listViews/listviewControllerExample.dart';
// Canvas
import 'package:flutter_example/pages/canvasExample.dart';
import 'package:flutter_example/pages/canvas/drawCanvas.dart';

Map<String, WidgetBuilder> routes = {
  'animations-example': (context) => AnimationsExample(),
  'slide-transition-example': (context) => SlideTrasitionExample(),
  'listview-example': (context) => ListviewExample(),
  'listview-controller-example': (context) => ListviewControllerExample(),
  'canvas-example': (context) => CanvasExample(),
  'draw-canvas-example': (context) => DrawCanvasExample(),
};
