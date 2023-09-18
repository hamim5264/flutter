import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 70,
        centerTitle: true,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        leading: Icon(
          Icons.add_business,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is mod 5 Assignment",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "My",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                  )),
              TextSpan(
                text: " phone",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              TextSpan(
                  text: " name",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                  )),
              TextSpan(
                  text: " Infinix G-88",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 26,
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
