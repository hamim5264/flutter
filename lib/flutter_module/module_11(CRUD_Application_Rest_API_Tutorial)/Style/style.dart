import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorWhite = Color.fromRGBO(255, 255, 225, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

///Background Image
SvgPicture screenBackground(context) {
  return SvgPicture.asset(
    "assets/images/background.svg",
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

///InputDecoration
InputDecoration appInputDecoration(label) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite, width: 0),
    ),
    border: const OutlineInputBorder(),
    labelText: label,
  );
}

///DropDownBox Decoration
DecoratedBox appDropDownStyle(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: colorWhite,
      border: Border.all(color: colorWhite, width: 1),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );
}

///Button Style
ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: const EdgeInsets.all(0),
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );
}

Ink successButtonChild(buttonText) {
  return Ink(
    decoration: BoxDecoration(
      color: colorGreen,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
      ),
    ),
  );
}

///Grid Style
SliverGridDelegateWithFixedCrossAxisCount productGridViewStyle() {
  return const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 2,
    mainAxisExtent: 250,
  );
}

///error Toast Msg
void errorToast(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorRed,
      textColor: colorWhite,
      fontSize: 16.0);
}

///Success Toast Msg
void successToast(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: colorGreen,
      textColor: colorWhite,
      fontSize: 16.0);
}
