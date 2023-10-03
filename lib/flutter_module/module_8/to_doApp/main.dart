import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_8/to_doApp/homepage.dart';

void main() {
  runApp(ToDo());
}

class ToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToDoScreen(),
      title: "To Do",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
