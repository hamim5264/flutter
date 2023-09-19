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
      debugShowCheckedModeBanner: false,
    );
  }
}
class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Scrollbar(
          child: ListView(
            children: [
              ListTile(
                title: Text("Apples"),
                leading: Icon(Icons.shopping_bag_outlined),
              ),
              ListTile(
                title: Text("Bananas"),
                leading: Icon(Icons.shopping_bag_outlined),
              ),
              ListTile(
                title: Text("Bread"),
                leading: Icon(Icons.shopping_bag_outlined),
              ),
              ListTile(
                title: Text("Milk"),
                leading: Icon(Icons.shopping_bag_outlined),
              ),
              ListTile(
                title: Text("Eggs"),
                leading: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
      ),
    );
  }

}