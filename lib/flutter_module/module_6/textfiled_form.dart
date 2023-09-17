import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen(),
      title: "TextFile From",
      debugShowCheckedModeBanner: true,
    );
  }
}
class screen extends StatelessWidget {
  mysnackbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.green,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField From"),
        elevation: 10,
        centerTitle: true,
        leading: Icon(Icons.format_align_center),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "First Name:",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Last Name:",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){mysnackbar("Submitted", context);},
                child: Text("Submit",),
              style: buttonStyle,
            ),
          ),
        ],
      ),
    );
  }
}