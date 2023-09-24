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
        title: Text("Expanded"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 25,
              child: Container(color: Colors.black,)
          ),
          Expanded(
              flex: 25,
              child: Container(color: Colors.red,)
          ),
          Expanded(
              flex: 25,
              child: Container(color: Colors.blue,)
          ),Expanded(
              flex: 25,
              child: Container(color: Colors.orange,)
          ),

        ],
      )
    );
  }

}