import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: true,
      title: "Module6_Class1",
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  my_snackbar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Module-6",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
        elevation: 10,
        toolbarHeight: 85,
        actions: [
          IconButton(
            onPressed: () {
              my_snackbar("Home", context);
            },
            icon: Icon(Icons.cast_for_education),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 200,
              child: Text("Container",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              //padding: EdgeInsets.all(10),
              //padding: EdgeInsets.only(top: 10, bottom: 4, left: 10, right: 4),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10,),
              decoration: BoxDecoration(
                  color: Colors.purple,
                border: Border.all(color: Colors.black, width: 5,),
                //borderRadius: BorderRadius.circular(10),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomRight: Radius.circular(16),),
                //shape: BoxShape.circle,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                padding: EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onLongPress: () {
                print("Email Deleted");
              },
              onPressed: () {
                print("Email has been sent");
              },
              child: Text("Send Mail"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onLongPress: () {
                my_snackbar("Performing Long Press", context);
              },
              onPressed: () {
                my_snackbar("Performing Resend", context);
              },
              child: Text("Resend"),
            ),
            IconButton(
              onPressed: () {
                my_snackbar("Adding", context);
              },
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.purple,
              ),
            ),
            OutlinedButton(
              onLongPress: () {
                my_snackbar("Long press on outline", context);
              },
              onPressed: () {
                my_snackbar("Outline", context);
              },
              child: Text(
                "Outline Button",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.purple,
                  filled: true,
                  hintText: "Enter your email address",
                  hintStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.white60,
                  ),
                  label: Text("Email:"),
                  labelStyle: TextStyle(
                    color: Colors.white60,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              //maxLines: 5,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.purple,
                filled: true,
                hintText: "Enter Password",
                hintStyle: TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                ),
                prefixIcon: Icon(
                  Icons.password,
                  color: Colors.white60,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellowAccent,),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
