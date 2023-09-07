import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: "Ostad app",
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text("Home"),
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 40,
        ),
      ),
      body: Column(
        children: [
          Text(
            "Home Screen",
            style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Hello world",
            style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w200
            ),
          ),
          Icon(Icons.android),
        ],
      ),
    );
  }
}