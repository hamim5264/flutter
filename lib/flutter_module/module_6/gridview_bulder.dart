import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: grid(),
      title: "GridView_Builder",
      debugShowCheckedModeBanner: true,
    );
  }
}
class grid extends StatefulWidget{
  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  @override

  List<String> students = [
    "Hamim",
    "Amrin",
    "Rafi",
    "Shanto",
    "Rubel",
    "Dip"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView_Builder", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 10,
        backgroundColor: Colors.purple,
      ),
      body: Scrollbar(
        thickness: 15,
          radius: Radius.circular(20),
          /*
          child: GridView.builder(
            itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ),
            itemBuilder: (cotext, index){
                return Column(
                  children: [
                    Text(index.toString()),
                    Icon(Icons.android),
                  ],
                );
            },
          ),
        */
        /*
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("Item Number $index"),
            );
          },
          */
        /*
          child: ListView.separated(
            itemCount: 30,
            itemBuilder: (context, index){
              return ListTile(
                title: Text("Item Number $index"),
              );
            },
            separatorBuilder: (context, index){
              return Column(
                children: [
                  Text("$index"),
                  Divider(),
                ],
              );
            },
        ),
        */
        child: ListView.separated(
          itemCount: students.length,
            itemBuilder: (context, index){
            return ListTile(
              title: Text(students[index]),
            );
            },
            separatorBuilder: (context, index){
            return Divider();
            },

        ),
        ),
      );
  }
}