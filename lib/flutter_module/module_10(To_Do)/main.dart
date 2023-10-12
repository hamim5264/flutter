import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/home_screen.dart';

///To_Do Application
///CRUD - Crate, Read, Update, Delete

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      title: "To-Do Application",
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
