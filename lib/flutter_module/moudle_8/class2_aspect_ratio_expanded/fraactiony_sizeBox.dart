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
        title: Text("Fractionaly Size Box"),
        centerTitle: true,
      ),
      body: Column(
        children: [

          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).width,
            color: Colors.black,
            child: FractionallySizedBox(
              widthFactor: 0.5, ///0-1
              heightFactor: 0.5,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

}