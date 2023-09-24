import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen(),
      debugShowCheckedModeBanner: true,
    );
  }

}
class screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aspect Ratio"),
        centerTitle: true,
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
            aspectRatio: 16/9,
          child: Container(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

}