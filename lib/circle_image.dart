import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_6/card.dart';

void main (){
  runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen(),
    );
  }
}
class screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/happy.jpg"),
              radius: 50,
            ),
          ],
        )
      ),
    );
  }

}