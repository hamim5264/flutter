import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: "Ostad App",
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("Home"),
        leading: Icon(
          Icons.home,
          size: 35,
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hello "),
              Text("World"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hamim"),
            ],
          ),
          Image.asset(
            'images/happy.jpg',
            width: 200,
            height: 170,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://www.wpbeginner.com/wp-content/uploads/2020/03/ultimate-small-business-resource-coronavirus.png",
                height: 250,
                width: 300,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "hello ",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: "i'm ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              TextSpan(
                text: "hamim",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                ),
              ),
              TextSpan(
                text: "\nHave a good day",
                style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
