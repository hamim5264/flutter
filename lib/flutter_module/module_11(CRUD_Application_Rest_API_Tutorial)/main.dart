import 'package:flutter/material.dart';
import 'package:ostad_flutter_project/flutter_module/module_11(CRUD_Application_Rest_API_Tutorial)/Screen/productGridViewScreen.dart';

void main() {
  runApp(const CRUDApp());
}

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CRUD Application",
      home: ProductGridViewScreen(),
    );
  }
}
