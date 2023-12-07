import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GetX Practice"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
            onPressed: () {
              Get.toNamed("/productPage");
              //Get.offNamed("/productPage"); in this case it will work for clear one routing history
              //Get.offAllNamed("/productPage"); in this case it will work for clear whole routing history
            },
            child: const Text(
              "Go To Product Page",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
