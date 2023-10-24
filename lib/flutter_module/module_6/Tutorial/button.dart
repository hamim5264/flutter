import 'package:flutter/material.dart';

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

  mySnackbar(msg, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonstyle = ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Button"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    mySnackbar("Text Button", context);
                  },
                  child: const Text("Text Button")),
              ElevatedButton(
                onPressed: () {
                  mySnackbar("Elevated Button", context);
                },
                style: buttonstyle,
                child: const Text("Elevated Button"),
              ),
              OutlinedButton(
                  onPressed: () {
                    mySnackbar("Outline Button", context);
                  },
                  child: const Text("OutlineButton"))
            ],
          ),
        ));
  }
}
