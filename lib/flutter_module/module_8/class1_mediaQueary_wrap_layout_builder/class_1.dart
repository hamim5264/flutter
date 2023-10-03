import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(RDApp());
}
class RDApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: true,
    );
  }

}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    //Size size = MediaQuery.of(context).size;
    //Size size = MediaQuery.sizeOf(context);
    //print(size.width);
    //print(size.height);
    //print(size.aspectRatio);
    //Orientation orientation = MediaQuery.orientationOf(context);
    //print(orientation);
    //List<DisplayFeature> displayfeature = MediaQuery.displayFeaturesOf(context);
    //print(displayfeature);
    //print(MediaQuery.devicePixelRatioOf(context));
    Brightness bright = MediaQuery.platformBrightnessOf(context);
    print(bright);

    return Scaffold(
      appBar: AppBar(
        title: Text("RD"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          print(constraints.maxWidth);
          if(constraints.maxWidth>500){
            return Center(child: Text("Too Big Screen"),);
          }else {
            return Center(
              child: OrientationBuilder(
                builder: (context, orientaion){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(orientaion==Orientation.portrait? "Portrait": "Landscape"),
                      Text(bright.toString()),
                      Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          Text(" Ah, fascinating! Flutter is a popular open-source mobile app development,"),
                          Text(" framework that enables developers to build cross-platform apps quickly and efficiently."),
                          Text("What is Flutter?"),
                        ],
                      ),
                    ],

                  );
                }
              ),
            );
          }
        }
      ),

    );
  }

}