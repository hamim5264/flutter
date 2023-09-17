import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreen(),
      title: "gridView_with_gesture_detector",
      debugShowCheckedModeBanner: true,
    );
  }
}
class homescreen extends StatelessWidget{

  mysnackbar(context,msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
  var picItems = [
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic1"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic2"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic3"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic4"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic5"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic6"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic7"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic8"},
    {"img": "https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg", "title": " Pic9"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridView_with_gesture_detector", style: TextStyle(fontSize: 15),),
        centerTitle: true,
        elevation: 10,
        toolbarHeight: 65,
      ),
      body: GridView.builder(
        itemCount: picItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){mysnackbar(context, picItems[index] ["title"]);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(picItems[index] ["img"]!, fit: BoxFit.fill,),
            ),
          );
          },
      ),
    );
  }

}