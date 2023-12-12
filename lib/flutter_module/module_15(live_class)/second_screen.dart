import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class)/home_screen.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class)/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // go to next screen but replace the current screen
                Get.off(const ThirdScreen());
              },
              child: const Text("Go to Third Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                // go to next screen and remove all previous screen
                Get.offAll(const CounterHomeScreen());
              },
              child: const Text("Go to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                // back to previous screen
                Get.back();
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
