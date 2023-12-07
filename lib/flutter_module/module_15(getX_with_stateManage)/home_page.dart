import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_flutter_project/flutter_module/module_15(getX_with_stateManage)/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GetX Practice"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                onPressed: () {
                  //Snackbar with getX
                  Get.snackbar(
                    "Hi",
                    "I'm GetX Snackbar!",
                    snackPosition: SnackPosition.BOTTOM,
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.red,
                    backgroundColor: Colors.white10,
                    colorText: Colors.black,
                    borderRadius: 2,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(5),
                    icon: const Icon(
                      CupertinoIcons.alarm_fill,
                      color: Colors.black,
                    ),
                    isDismissible: false,
                    duration: const Duration(seconds: 2),
                    animationDuration: const Duration(milliseconds: 1500),
                    overlayBlur: 5,
                  );
                },
                child: const Text(
                  "Snackbar",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                onPressed: () {
                  //Dialog with getX
                  Get.defaultDialog(
                    title: "Delete!",
                    titlePadding: const EdgeInsets.all(10),
                    titleStyle: const TextStyle(color: Colors.red),
                    middleText: "Once you delete you can't get it back",
                    middleTextStyle: const TextStyle(color: Colors.black),
                    backgroundColor: Colors.white,
                    radius: 5,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    textCancel: "Not Now",
                    cancelTextColor: Colors.black,
                    buttonColor: Colors.red,
                    onCancel: () => {Get.back(closeOverlays: true)},
                    onConfirm: () => {Get.back(closeOverlays: true)},
                    barrierDismissible: false,
                    content: const Column(
                      children: [
                        Text("Dialog 1"),
                        Text("Dialog 2"),
                        Text("Dialog 3"),
                        Text("Dialog 4"),
                        Text("Dialog 5"),
                      ],
                    ),
                  );
                },
                child: const Text(
                  "Dialog",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                onPressed: () {
                  //bottomSheet with getX
                  Get.bottomSheet(
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text("BottomSheet 1"),
                          const Text("BottomSheet 2"),
                          const Text("BottomSheet 3"),
                          const Text("BottomSheet 4"),
                          const Text("BottomSheet 5"),
                          IconButton(
                            onPressed: () => {Get.back(closeOverlays: true)},
                            icon: const Icon(
                              CupertinoIcons.clear_circled_solid,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    enableDrag: false,
                    isDismissible: false,
                    barrierColor: Colors.black54,
                  );
                },
                child: const Text(
                  "BottomSheet",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                onPressed: () {
                  Get.to(const ProductPage());
                  // Get.off(ProductPage()); in this case there will be no back button and it will work for clear one routing history
                  // Get.offAll(ProductPage()); in this case it work for clear all routing history
                },
                child: const Text(
                  "Go To Product Page",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
