import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    Size size = MediaQuery.sizeOf(context);
    print(size.width);
    print(size.height);
    print(size.aspectRatio);
    Orientation orientation = MediaQuery.orientationOf(context);
    print(orientation);
    List<DisplayFeature> displayfeature = MediaQuery.displayFeaturesOf(context);
    print(displayfeature);
    print(MediaQuery.devicePixelRatioOf(context));
    Brightness bright = MediaQuery.platformBrightnessOf(context);
    print(bright);

    return Scaffold(
      appBar: AppBar(
        title: Text("Media_Query"),
        centerTitle: true,
      ),
    );
  }
}
