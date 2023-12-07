import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(getX_with_stateManage)/home_page.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
    );
  }
}
