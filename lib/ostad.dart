import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const myApp());
}
class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: true,
      title: "practice app",
    );
  }
}
class Home extends StatelessWidget{
  const Home({super.key});

  mySnackbar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ostad Clone App"),
        titleSpacing: 10, //[control the title in exact location]
        //centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1, //[0-1]
        elevation: 10,
        backgroundColor: Colors.red,

        actions: [
          IconButton(onPressed: () {mySnackbar("I'm Setting", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {mySnackbar("I'm Search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {mySnackbar("I'm Comment", context);}, icon: Icon(Icons.comment)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 5,
        backgroundColor: Colors.red,
        onPressed: () {
          mySnackbar("I'm Counting", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index){
          if (index == 0){
            mySnackbar("HomeScreen", context);
          }
          if (index == 1){
            mySnackbar("Call Now", context);
          }
          if (index == 2){
            mySnackbar("Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Hamim Leon", style: TextStyle(color: Colors.red),),
                accountEmail: Text("hamim.leon@gamil.com", style: TextStyle(color: Colors.orange),),
              currentAccountPicture: Image.asset("images/happy.jpg"),
                decoration: BoxDecoration(color: Colors.black),
                onDetailsPressed: (){mySnackbar("This is my profile", context);},
            ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                mySnackbar("This is home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Call"),
              onTap: (){
                mySnackbar("This is call", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              onTap: (){
                mySnackbar("This is search", context);
              },
            ),
          ],
        ),
      ),
    );
  }

}