import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
      debugShowCheckedModeBanner: true,
      title: "Dynamic List view Builder with Gesture Detector",
    );
  }
}
class homeScreen extends StatelessWidget{

  mySnackbar (context, msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
  var picItems = [
    {"img" : "images/happy.jpg", "title": "Nature1"},
    {"img" : "images/happy.jpg", "title": "Nature2"},
    {"img" : "images/happy.jpg", "title": "Nature3"},
    {"img" : "images/happy.jpg", "title": "Nature4"},
    {"img" : "images/happy.jpg", "title": "Nature4"},



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List view Builder with Gesture Detector",style: TextStyle(fontSize: 12),),
        centerTitle: true,
        elevation: 10,
        toolbarHeight: 65,
      ),
      body: ListView.builder(
        itemCount: picItems.length,
          itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){mySnackbar(context, picItems[index] ["title"]);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.asset(picItems[index]["img"]!, fit: BoxFit.fill,),
            ),
          );
          },
      ),
    );
  }

}