import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: HomeScreen(),
     title: "Essential Widgets",
     debugShowCheckedModeBanner: true,
   );
  }
}
class HomeScreen extends StatelessWidget{

  mySnacbar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Essential Widgets"),
        leading: Icon(Icons.widgets),
        elevation: 10,
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child:
              Text("Hello World\n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              onTap: () {mySnacbar("Tapped", context);},
              onLongPress: () {mySnacbar("Long pressed", context);},
              onDoubleTap: () {mySnacbar("Dubble taped", context);},
            ),
            InkWell(
              borderRadius: BorderRadius.all(Radius.zero),
              child: Text("Hello World", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),),
              onTap: () {mySnacbar("Tapped", context);},
            ),
          ],
        ),
      ),
    );
  }

}