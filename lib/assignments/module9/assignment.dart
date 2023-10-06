import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: "Module9_Assignment",
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int itemCount1 = 1;
  int itemCount2 = 1;
  int itemCount3 = 1;
  int totalItemPrice = 0;
  int item1 = 0;
  int item2 = 0;
  int item3 = 0;

  mySnackbar(msg, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Bag",
          style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Text("My Bag", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Image.network(
                    "https://anninc.scene7.com/is/image/LO/766472_2222",
                  ),
                  title: const Text(
                    "Pull Over",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Row(
                    children: [
                      Text("Colors: "),
                      Text(
                        "Black  ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("  Size: "),
                      Text(
                        "L",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      const Icon(Icons.account_circle),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "${item1 + 51}\$",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white60,
                          padding: const EdgeInsets.all(4),
                        ),
                        onPressed: () {
                          if (itemCount1 > 0) {
                            itemCount1--;
                            item1 -= 51;
                          }
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("${itemCount1}"),
                    ),
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white60,
                          padding: const EdgeInsets.all(4),
                        ),
                        onPressed: () {
                          itemCount1++;
                          item1 += 51;
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Image.network(
                    "https://images.unsplash.com/photo-1598403031688-e7cfd2c222c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTIzfHx0JTIwc2hpcnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                  ),
                  title: const Text(
                    "T-Shirt",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Row(
                    children: [
                      Text("Colors: "),
                      Text(
                        "Gray  ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("  Size: "),
                      Text(
                        "L",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      const Icon(Icons.account_circle),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "${item2 + 30}\$",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white60,
                          padding: const EdgeInsets.all(4),
                        ),
                        onPressed: () {
                          if (itemCount2 > 0) {
                            itemCount2--;
                            item2 -= 30;
                          }
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("${itemCount2}"),
                    ),
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white60,
                          padding: const EdgeInsets.all(4),
                        ),
                        onPressed: () {
                          itemCount2++;
                          item2 += 30;
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Image.network(
                    "https://images.unsplash.com/photo-1603035706782-019a03005594?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fHNwb3J0JTIwY2xvdGhlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                  ),
                  title: const Text(
                    "Sport Dress",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Row(
                    children: [
                      Text("Colors: "),
                      Text(
                        "Black  ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("  Size: "),
                      Text(
                        "M",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      const Icon(Icons.account_circle),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "${item3 + 43}\$",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white60,
                          padding: const EdgeInsets.all(4),
                        ),
                        onPressed: () {
                          if (itemCount3 > 0) {
                            itemCount3--;
                            item3 -= 43;
                          }
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("${itemCount3}"),
                    ),
                    SizedBox(
                      height: 36,
                      width: 36,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white60,
                          padding: const EdgeInsets.all(4),
                        ),
                        onPressed: () {
                          itemCount3++;
                          item3 += 43;
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 200,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Total Amount: "),
              Text(
                "${item1 + 51 + item2 + 30 + item3 + 43}\$",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          SizedBox(
            height: 48,
            width: 343,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                mySnackbar("Congrats! Purchased Complete.", context);
              },
              child: const Text("CHECK OUT"),
            ),
          ),
        ],
      ),
    );
  }
}
