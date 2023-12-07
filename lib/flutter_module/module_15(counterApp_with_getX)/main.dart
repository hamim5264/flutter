import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(counterApp_with_getX)/home_page.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page: () => const HomePage(),
            transition: Transition.zoom),
      ],
    );
  }
}
