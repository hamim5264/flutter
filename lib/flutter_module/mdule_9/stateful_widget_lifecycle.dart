import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

///Constructor
///CreateState
///IniState

///DidChangeDependencies -> dependency change
///build -> setState
///didUpdateWidget -> parent er configuration change

///deactivate
///dispose

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  ///1
  @override
  void initState() {
    /// task when start
    print("init statwe");
    super.initState();
  }

  ///2
  @override
  void didChangeDependencies() {
    print("Did Change Dependency");
    super.didChangeDependencies();
  }

  ///3
  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    print("did update widget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build method");
    return Scaffold(
      appBar: AppBar(
        title: const Text("StateFul Life Cycle"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "$count",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            count++;
            setState(() {});
          }),
    );
  }

  ///5
  @override
  void deactivate() {
    print("Deactivated");
    super.deactivate();
  }

  ///6
  @override
  void dispose() {
    print("Dispose");
    super.dispose();
  }
}
