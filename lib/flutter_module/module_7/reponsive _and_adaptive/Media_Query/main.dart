import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_7/reponsive%20_and_adaptive/Media_Query/style.dart';

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
      appBar:  AppBar(
        title: Text("Responsive Media Query"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Hello Flutter", style: HeadLine(context),
        ),
      ),

    );
  }

}