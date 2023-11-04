import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_10(To_Do)/PracticeToDo/home_screen.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
