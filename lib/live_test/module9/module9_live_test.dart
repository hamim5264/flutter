import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonColorChangeDemo(),
    );
  }
}

class ButtonColorChangeDemo extends StatefulWidget {
  const ButtonColorChangeDemo({super.key});

  @override
  _ButtonColorChangeDemoState createState() => _ButtonColorChangeDemoState();
}

class _ButtonColorChangeDemoState extends State<ButtonColorChangeDemo> {
  String selectedSize = "";
  Color selectedButtonColor = Colors.white60;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  myanackbar(msg, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  void _onButtonTap(String size) {
    setState(() {
      selectedSize = size;
    });
    myanackbar("Size: $size", context);
  }

  ElevatedButton _buildSizeButton(String size, Color buttonColor) {
    return ElevatedButton(
      onPressed: () => _onButtonTap(size),
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
      ),
      child: Text(size),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildSizeButton(
                "S", selectedSize == "S" ? Colors.yellow : selectedButtonColor),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            _buildSizeButton(
                "M", selectedSize == "M" ? Colors.yellow : selectedButtonColor),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            _buildSizeButton(
                "L", selectedSize == "L" ? Colors.yellow : selectedButtonColor),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            _buildSizeButton("XL",
                selectedSize == "XL" ? Colors.yellow : selectedButtonColor),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            _buildSizeButton("XXL",
                selectedSize == "XXL" ? Colors.yellow : selectedButtonColor),
            const SizedBox(
              height: 10,
              width: 5,
            ),
            _buildSizeButton("XXXL",
                selectedSize == "XXXL" ? Colors.yellow : selectedButtonColor),
          ],
        ),
      ),
    );
  }
}
