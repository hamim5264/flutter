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
        title: Text("Scrool View"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(height: 200,width: 200,color: Colors.red,),
            Container(height: 200,width: 200,color: Colors.black,),
            Container(height: 200,width: 200,color: Colors.green,),
            Container(height: 200,width: 200,color: Colors.orange,),
            Container(height: 200,width: 200,color: Colors.blue,),
            Container(height: 200,width: 200,color: Colors.purple,),
            Container(height: 200,width: 200,color: Colors.red,),
            Container(height: 200,width: 200,color: Colors.black,),
          ],
        ),
      )
    );
  }

}