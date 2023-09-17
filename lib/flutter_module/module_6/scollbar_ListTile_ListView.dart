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
        child: ListView(
          children: [
            ListTile(
              title: Text("User Name",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),),
              subtitle: Text("Email:", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.account_circle,color: Colors.pink,),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){mySnacbar("Tapped", context);},
            ),
            Divider(
              height: 30,
              thickness: 7,
              color: Colors.pink,
              endIndent: 20,
              indent: 20,
            ),
            ListTile(
              title: Text("Address",style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
              subtitle: Text("Phone:", style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.home,color: Colors.pink,),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){mySnacbar("Tapped", context);},
            ),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
          ],
        ),
      ),
        /*
      Scrollbar(
        thickness: 8,
        radius: Radius.circular(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
              Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"), Text("Hamim"),
            ],
          ),
        ),
      ),

         */
    );
  }

}
////