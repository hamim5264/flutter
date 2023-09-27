import 'package:flutter/material.dart';

InputDecoration AppInputStyle(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      filled: true,
      fillColor: Colors.white60,
      border: OutlineInputBorder(),
      labelText: label);
}

TextStyle HeadTextStyle() {
  return TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
