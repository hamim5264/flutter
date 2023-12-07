import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Page"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
          onPressed: () {
            Get.back();
          },
          child: const Text(
            "Go To Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
