import 'package:flutter/material.dart';

///RichText
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 20,
        leading: const Icon(Icons.add_business),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is mod 5 Assignment",
                style: TextStyle(fontWeight: FontWeight.bold)),
            RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "My ",
                      style: TextStyle(fontSize: 22, color: Colors.red),
                    ),
                    TextSpan(
                      text: "phone ",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                    TextSpan(
                      text: "name ",
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                    TextSpan(
                      text: "Infinix Note 12",
                      style: TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}