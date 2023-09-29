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
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Builder"),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth > 500) {
          return Center(
            child: Text("Too Big Screen"),
          );
        } else {
          return Center(
            child: OrientationBuilder(builder: (context, orientaion) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(orientaion == Orientation.portrait
                      ? "Portrait"
                      : "Landscape"),
                  Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    children: [
                      Text(
                          " Ah, fascinating! Flutter is a popular open-source mobile app development,"),
                      Text(
                          " framework that enables developers to build cross-platform apps quickly and efficiently."),
                      Text("What is Flutter?"),
                    ],
                  ),
                ],
              );
            }),
          );
        }
      }),
    );
  }
}
