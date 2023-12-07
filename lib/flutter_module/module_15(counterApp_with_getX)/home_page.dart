import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(counterApp_with_getX)/stateController/counter_state_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterStateController counterStateController =
        Get.put(CounterStateController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Counter App With GetX",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Obx(
          () => Text(
            "Count: ${counterStateController.count}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          counterStateController.increment();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
