import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

void main(){
  runApp(
    DevicePreview(
      enabled: kDebugMode, ///true/false
        builder: (context){
          return MyApp();
        }
    ),
  );
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientaion, deviceType){
          print(deviceType);
          return MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: Homepage(),
          );
        }
    );
  }
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sizer"),
        centerTitle: true,
      ),
      body: ResponsiveBuilder(
        builder: (context, sizeInformation){
          return Center(
            child: Text(
              sizeInformation.deviceScreenType.toString(),
              style: TextStyle(
                fontSize: 25.w,
              ),
            ),
          );
        }
      ),
    );
  }

}