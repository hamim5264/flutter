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
        title: const Text("Container"),
        centerTitle: true,
      ),
      body: Container(
        height: 250,
        width: 250,
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(20),
        //alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 10),
          color: Colors.purple,
        ),
        child: Image.asset("images/hamim.jpg"),
      ),
    );
  }
}

