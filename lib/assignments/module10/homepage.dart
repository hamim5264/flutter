import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/assignments/module10/add_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.blue,
          ),
        ],
      ),
      body: const AddItem(),
    );
  }
}
