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
        title: Text("Flexible"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
              flex: 1,
              child: Container(
                color: Colors.red,
                width: MediaQuery.sizeOf(context).width,
              ),
          ),
          Flexible(
            fit: FlexFit.loose,
              flex: 5,
              child: Container(
                color: Colors.black,
                width: MediaQuery.sizeOf(context).width,
              ),
          ),
          Flexible(
            flex: 2,
              child: Row(
                children: [
                  Flexible(
                      child: Container(
                        color: Colors.blueAccent,
                      ),
                  ),
                  Flexible(
                    flex: 5,
                      child: Container(
                        color: Colors.red,
                      ),
                  ),
                ],
              ),
          ),
          Flexible(
            fit: FlexFit.loose,
              flex: 3,
              child: Container(
                color: Colors.orange,
                width: MediaQuery.sizeOf(context).width,
              ),
          ),
          Container(
            height: 50,
            color: Colors.green,
            width: MediaQuery.sizeOf(context).width,

          ),
        ],
      ),
    );
  }

}