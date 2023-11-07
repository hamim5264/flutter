import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(Live_Class_Project)/Screens/product_list_screen.dart';

void main() {
  runApp(const CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductListScreen(),
    );
  }
}
