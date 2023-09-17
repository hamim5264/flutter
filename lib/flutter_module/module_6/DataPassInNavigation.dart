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
      title: "Navigation",
      debugShowCheckedModeBanner: true,
    );
  }
}
class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1("From Home to activity 1")));
          },
              child: Text("Go to Activity 1"),
          ),
          SizedBox(
            height: 10,
            width: 20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1("From Home to activity 2")));
          },
            child: Text("Go to Activity 2"),
          ),
        ],
      ),

    );
  }

}

class Activity1 extends StatelessWidget {
  String msg;
  Activity1(
      this.msg,
      {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2("From 1 to 2")));
          },
              child: Text("Go to activity 2"),
          ),

        ],
      ),
    );
  }

}

class Activity2 extends StatelessWidget {
  String msg;
Activity2(
    this.msg,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity-2"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity1("From 2 to 1")));
          },
              child: Text("Go to activity 1"),
          ),

        ],
      ),
    );
  }

}