import 'package:flutter/material.dart';
// Animation
import 'pages/animationsExample.dart';
import 'pages/animations/slideTransitionExample.dart';
// Listview
import 'pages/listviewExample.dart';
import 'pages/listViews/listviewControllerExample.dart';
// Canvas
import 'pages/canvasExample.dart';
import 'pages/canvas/drawCanvas.dart';
// Step by step
import 'pages/stepByStepExample.dart';
// Image picker
import 'pages/imagePickerExample.dart';
import 'pages/imagePicker/imagePickerDefault.dart';

Map<String, WidgetBuilder> routes = {
  // Animation
  'animations-example': (context) => AnimationsExample(),
  'slide-transition-example': (context) => SlideTrasitionExample(),
  // Listview
  'listview-example': (context) => ListviewExample(),
  'listview-controller-example': (context) => ListviewControllerExample(),
  // Canvas
  'canvas-example': (context) => CanvasExample(),
  'draw-canvas-example': (context) => DrawCanvasExample(),
  // Step by step
  'step-by-step': (context) => StepByStepExample(),
  // Image picker
  'image-picker': (context) => ImagePickerExample(),
  'image-picker-default': (context) => ImagePickerDefault(),
};
