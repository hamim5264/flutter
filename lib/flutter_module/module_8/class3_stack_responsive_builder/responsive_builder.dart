import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ResponsiveBuilder(builder: (context, sizeInformation) {
        return Center(
          child: Text(
            sizeInformation.deviceScreenType.toString(),
            style: TextStyle(
              fontSize: 15.sw,
            ),
          ),
        );
      }),
    );
  }
}
