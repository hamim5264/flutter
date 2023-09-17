import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen (),
      debugShowCheckedModeBanner: true,
      title: "Navigator",
    );
  }
}
///Route -> 1
class homeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator",style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home",
              style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.purple,
                fontSize: 25,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  ///Navigation - Route home -> Route Settings
                  ///Navigator
                  ///Navigator - typeOfNavigation(CurrentLocation, Destination)
                  ///Navigation - push , pop(back), replace, replaceAll, removeUntil
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> settings(),),);
                },
                child: Text("Go to Settings"),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> orders()));
                }, 
                child: Text("Go to Orders"),
            ),
          ],
        ),
      ),
    );
  }
}
///Route -> 2
class settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator",style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Settings",
              style: TextStyle(fontSize: 25, color: Colors.green),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> homeScreen()),
                      (route) => false);
            },
                child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}

///Route -> 3
class orders extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders",style: TextStyle(fontWeight: FontWeight.bold)),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Orders",
              style: TextStyle(fontSize: 25, color: Colors.green),
            ),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> settings()));
            },
                child: Text("Go to Settings"),
            ),
            TextButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}