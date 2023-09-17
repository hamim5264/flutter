import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/fragments/CallFragment.dart';
import 'package:ostad_flutter_project/fragments/ExitFragment.dart';
import 'package:ostad_flutter_project/fragments/HomeFragment.dart';
import 'package:ostad_flutter_project/fragments/MailFragment.dart';
import 'package:ostad_flutter_project/fragments/SearchFragment.dart';
import 'package:ostad_flutter_project/fragments/SettingsFragment.dart';

void main ()
{
  runApp(tabapp());
}
class tabapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen(),
      title: "TabBaR",
      debugShowCheckedModeBanner: true,
    );
  }
}
class screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            centerTitle: true,
            backgroundColor: Colors.pink,
            bottom: TabBar(
              isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home",),
                  Tab(icon: Icon(Icons.call), text: "Call",),
                  Tab(icon: Icon(Icons.search), text: "Search",),
                  Tab(icon: Icon(Icons.settings), text: "Settings",),
                  Tab(icon: Icon(Icons.mail), text: "Mail",),
                  Tab(icon: Icon(Icons.exit_to_app), text: "Exit",),
                ],
            ),
          ),
          body: TabBarView(
              children:[
                HomeFragment(),
                CallFragment(),
                SearchFragment(),
                SettingsFragment(),
                MailFragment(),
                ExitFragment(),
              ],

          ),

        ),
    );
  }
  
}