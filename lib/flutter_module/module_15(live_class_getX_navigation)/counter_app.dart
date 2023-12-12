import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class_getX_navigation)/counter_state_controller.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(live_class_getX_navigation)/home_screen.dart';

class GetXDependencyBinder extends Bindings {
  ///Get dependency manager
  ///todo - Code against abstraction -> dependency injection -> dependency inversion
  @override
  void dependencies() {
    Get.put(CounterStateController());
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const CounterHomeScreen(),
      initialBinding: GetXDependencyBinder(),
    );
  }
}
