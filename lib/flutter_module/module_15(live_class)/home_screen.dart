import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class)/counter_state_controller.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class)/second_screen.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});

  @override
  State<CounterHomeScreen> createState() => _CounterHomeScreenState();
}

class _CounterHomeScreenState extends State<CounterHomeScreen> {
  CounterStateController counterStateController =
      Get.find<CounterStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterStateController>(builder: (controller) {
              return Text(
                controller.count.toString(),
                style: const TextStyle(fontSize: 30),
              );
            }),
            ElevatedButton(
                onPressed: (){
                  Get.to(SecondScreen());
                },
                child: const Text("Go to Second Screen"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterStateController.updateValue(1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
