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
      body: Scrollbar(
        thickness: 10,
          radius: Radius.circular(20),
          child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: [
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.account_circle)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.access_time_filled_outlined)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.access_alarm)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.phone)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.email)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.access_time_filled_sharp)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.numbers)),
              IconButton(onPressed: () {mySnacbar("Tapped", context);}, icon: Icon(Icons.cast_for_education)),

            ],
          ),
      ),
    );
  }

}