import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class)/home_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class)/second_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.off(const SecondScreen());
              },
              child: const Text("Go to Second Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(const CounterHomeScreen());
              },
              child: const Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
