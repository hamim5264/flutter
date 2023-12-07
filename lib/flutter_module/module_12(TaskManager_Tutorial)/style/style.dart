import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

///Color Management
const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen = Colors.green;
const colorBlue = Colors.blueAccent;
const colorOrange = Color.fromRGBO(230, 126, 34, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);
const colorLightGray = Color.fromRGBO(135, 142, 150, 1);
const colorLight = Color.fromRGBO(211, 211, 211, 1);
const statusChipColor = Colors.cyan;
///HeadLine Text Style
TextStyle head1Text(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}

///Description Text Style
TextStyle head6Text(textColor) {
  return TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

///Other's text style
TextStyle head7Text(texColor) {
  return TextStyle(
    color: texColor,
    fontSize: 13,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

///card text style
TextStyle head9Text(texColor) {
  return TextStyle(
    color: texColor,
    fontSize: 10,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

///InputDecoration and TextField Management
InputDecoration appInputDecoration(label) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1),
    ),
    fillColor: colorWhite,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: colorWhite, width: 0.0),
    ),
    border: const OutlineInputBorder(),
    labelText: label,
  );
}

///DropDown Decoration
DecoratedBox appDropDownStyle(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white, width: 1),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );
}

///Screen Background image management
SvgPicture screenBackground(context) {
  return SvgPicture.asset(
    "assets/images/background.svg",
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

///Button style
ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.zero,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );
}

///Button text style
TextStyle buttonTextStyle() {
  return const TextStyle(
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
    color: Colors.white
  );
}

///Status style
Container statusChild(statusText, statusColor) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: statusColor,
    ),
    height: 20,
    width: 60,
    child: Text(
      statusText,
      style: const TextStyle(
          color: colorWhite, fontSize: 10, fontWeight: FontWeight.w400),
    ),
  );
}

///Size box style
SizedBox itemSizeBox(child) {
  return SizedBox(
    width: double.infinity,
    child: Container(
      padding: const EdgeInsets.all(10),
      child: child,
    ),
  );
}

///App Status Button style
ButtonStyle appStatusButtonStyle(buttonColor) {
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.zero,
    backgroundColor: buttonColor,
  );
}

///Success button style
Ink successButtonChild(String buttonText) {
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
        style: buttonTextStyle(),
      ),
    ),
  );
}

///PIN code fields style
PinTheme appOTPStyle() {
  return PinTheme(
    inactiveColor: colorLight,
    inactiveFillColor: colorWhite,
    selectedColor: colorGreen,
    activeColor: colorWhite,
    selectedFillColor: colorGreen,
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    borderWidth: 0.5,
    fieldWidth: 45,
    activeFillColor: Colors.white,
  );
}

///Success Toast Msg
void successToast(msg) {
  Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: colorGreen,
    textColor: colorWhite,
    fontSize: 16.0,
  );
}

///Error Toast Msg
void errorToast(msg) {
  Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: colorRed,
    textColor: colorWhite,
    fontSize: 16.0,
  );
}
