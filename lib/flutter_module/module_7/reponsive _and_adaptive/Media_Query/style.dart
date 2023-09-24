import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle HeadLine(context){
  var width  = MediaQuery.of(context).size.width;
  if (width<700){
    return TextStyle(
      color: Colors.deepOrange,
      fontSize: 34,

    );
  }else{
    return TextStyle(
      color: Colors.black,
      fontSize: 65,

    );

  }
}