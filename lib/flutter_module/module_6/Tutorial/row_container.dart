import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
    );
  }
}
class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Container"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset("images/leon.jpg"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset("images/leon.jpg"),
          ),
          Container(
            height: 100,
            width: 100,
            child: Image.asset("images/leon.jpg"),
          ),
        ],
      )
    );
  }
}

