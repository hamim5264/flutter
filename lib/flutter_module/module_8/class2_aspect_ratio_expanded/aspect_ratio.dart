import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }

}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Aspect Ratio"),
          centerTitle: true,
        ),
        body: Column(
          children: [

            ///Ratio:= width : height
            ///Ratio:= 16/16
            ///100/100
            AspectRatio(
                aspectRatio: 16/9,
              child: Container(
                color: Colors.red,
                child: Image.network('https://plus.unsplash.com/premium_photo-1686978705258-6149c33ba0a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDF8Q0R3dXdYSkFiRXd8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                //fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
  }

}