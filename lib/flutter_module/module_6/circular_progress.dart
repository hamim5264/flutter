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
        title: Text("Circular Progress"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 5,

        ),
      ),
    );
  }

}