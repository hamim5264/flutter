import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myapp());
}
class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
    );
  }

}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text("Home"),
        trailing: CupertinoSwitch (onChanged: (bool onChange){

        }, value: true,
        ),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello World"),
              Text("Hello World"),
              CupertinoButton.filled(child: Text("Cupertino"), onPressed: (){}),
              SizedBox(
                height: 50,
                width: 300,
                child: CupertinoTextField(),
              ),
              CupertinoTabBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label:"home"),
                BottomNavigationBarItem(icon: Icon(Icons.home_filled), label:"home"),
                BottomNavigationBarItem(icon: Icon(Icons.home_filled), label:"home"),
              ])

            ],
          ),
        ),
    );
  }

}