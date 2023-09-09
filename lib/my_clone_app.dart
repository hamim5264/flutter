import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const cloneApp());
}
class cloneApp extends StatelessWidget{
  const cloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      title: "Clone App",
      debugShowCheckedModeBanner: true,
    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  mySnackbar (message, context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clone", style: TextStyle(fontSize: 15),),
        titleSpacing: 70,
        toolbarOpacity: 1,
        toolbarHeight: 80,
        backgroundColor: Colors.deepOrange,
        //leading: IconButton(onPressed: () {mySnackbar("Go to profile", context);}, icon: Icon(Icons.account_circle)),
        elevation: 20,
        actions: [
          IconButton(onPressed: () {mySnackbar("Type your message here", context);}, icon: Icon(Icons.chat)),
          IconButton(onPressed: () {mySnackbar("Go to Settings", context);}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, size: 25,),
          backgroundColor: Colors.deepOrange,
          elevation: 10,
          onPressed: (){
          mySnackbar("Counting your tap", context);
          }
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
        onTap: (int index) {
          if (index == 0){
            mySnackbar("HomeScreen", context);
          }
          if (index == 1){
            mySnackbar("Call Now", context);
          }
          if (index == 2){
            mySnackbar("Your Profile", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    accountName: Text("Hamim Leon", style: TextStyle(color: Colors.black),),
                    accountEmail: Text("hamim15-5264@diu.edu.bd", style: TextStyle(color: Colors.black),),
                  decoration: BoxDecoration(color: Colors.orange),
                  currentAccountPicture: Image.asset("images/user.jpg"),
                  onDetailsPressed: () {mySnackbar("This is Your Profile", context);},
                ),
            ),
            ListTile(
              leading: Icon(Icons.home, size: 30, color: Colors.orange,),
              title: Text("Home"),
              onTap: (){mySnackbar("Home", context);},
            ),
            ListTile(
              leading: Icon(Icons.search, size: 30, color: Colors.red,),
              title: Text("Search"),
              onTap: (){mySnackbar("Search", context);},
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    accountName: Text("Shahina"),
                    accountEmail: Text("aktershahina896@gamil.com"),
                  decoration: BoxDecoration(color: Colors.deepOrange),
                  currentAccountPicture: Image.asset("images/happy.jpg"),
                  onDetailsPressed: (){mySnackbar("Secound profile", context);},
                ),
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text("Call"),
              onTap: (){mySnackbar("Call now", context);},
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text("Cemera"),
              onTap: (){mySnackbar("Capture pic", context);},
            ),
          ],
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
              IconButton(onPressed: (){mySnackbar("Welcome", context);},
                  icon: Icon(Icons.account_circle,size: 50, color: Colors.red,),
              ),
            ],
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
            children: [
              TextSpan(
                text: "\nWelcome in our app",
                style: TextStyle(color: Colors.black, fontSize: 20,),
              ),
              TextSpan(
                text: "\nLet's start a new journey",
                style: TextStyle(color: Colors.blue, fontSize: 14,)
              ),
            ],
          ),),
        ],

      ),

    );
  }

}