import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      border: OutlineInputBorder(),
      labelText: label);
}

ButtonStyle AppButton() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(17),
    //backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
  );
}

SizedBox sizeBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}
