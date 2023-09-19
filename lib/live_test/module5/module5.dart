import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homeScreen(),
      title: "Live Test",
      debugShowCheckedModeBanner: true,
    );
  }
}

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.account_circle,
                  size: 50,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: "Jhon Doe\n",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 28,
                ),
              ),
              TextSpan(
                text: "Flutter Batch 4",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
