import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ostad_flutter_project/flutter_module/module_12(TaskManager_Tutorial)/style/style.dart';

BottomNavigationBar appBottomNav(currentIndex, onItemTapped) {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.news_solid), label: "New"),
      BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrow_2_circlepath_circle_fill), label: "Progress"),
      BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.arrowtriangle_right_square_fill), label: "Completed"),
      BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.clear_circled_solid), label: "Canceled"),
    ],
    selectedItemColor: colorGreen,
    unselectedItemColor: colorLightGray,
    currentIndex: currentIndex,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    onTap: onItemTapped,
    type: BottomNavigationBarType.fixed,
  );
}
