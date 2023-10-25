import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show About Dialog & Licences"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAboutDialog(
                  context: context,
                applicationName: "Flutter",
                applicationVersion: "1.00.5",
                applicationIcon: Icon(Icons.adb),
                children: [
                  Text("This is new application"),
                ]
              );
            },
                child: Text("Show About"),
            ),
          ],
        ),
      ),
    );
  }
}

