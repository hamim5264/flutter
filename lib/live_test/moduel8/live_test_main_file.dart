import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Feed"),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
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
                            child: Image.network(
                              "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: OrientationBuilder(builder: (context, orientaion) {
              return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
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
                                    child: Image.network(
                                      "https://play-lh.googleusercontent.com/IeNJWoKYx1waOhfWF6TiuSiWBLfqLb18lmZYXSgsH1fvb8v1IYiZr5aYWe0Gxu-pVZX3",
                                      fit: BoxFit.cover,
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }),
          );
        }
      }),
    );
  }
}
