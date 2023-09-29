import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }

}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    color: Colors.black12,
                    child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                    fit: BoxFit.cover,
                    ),
                  )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    ),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Container(
                      alignment: Alignment.center,
                      height: 150,
                      width: 150,
                      color: Colors.black12,
                      child: Image.network("https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}