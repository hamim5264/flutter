import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
      title: "Drawer-FloatingActionButton-BottomNavigationBar",
      debugShowCheckedModeBanner: true,
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  mySnackbar(msg, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Module-5"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              mySnackbar("I'm Mail", context);
            },
            icon: const Icon(Icons.mail),
          ),
          IconButton(
            onPressed: () {
              mySnackbar("I'm Settings", context);
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              mySnackbar("I'm Search", context);
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackbar("I'm Msg", context);
            },
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            mySnackbar("I'm Floating Action Button", context);
          },
          child: const Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_sharp),
            label: "Contact",
          ),
        ],
        currentIndex: 1,
        onTap: (int index) {
          if (index == 0) {
            mySnackbar("I'm Home", context);
          }
          if (index == 1) {
            mySnackbar("I'm Profile", context);
          }
          if (index == 2) {
            mySnackbar("I'm Contact", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: const Text("Hamim Leon"),
                accountEmail: const Text("hamim.leon@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("images/hamim.jpg"),
                ),
                onDetailsPressed: () {
                  mySnackbar("My Profile", context);
                },
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                mySnackbar("I'm Home", context);
              },
            ),
            ListTile(
              title: const Text("Call"),
              leading: const Icon(Icons.call),
              onTap: () {
                mySnackbar("I'm Call", context);
              },
            ),
            ListTile(
              title: const Text("Exit"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                mySnackbar("I'm Exit", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: const Text("Hamim Leon"),
                accountEmail: const Text("hamim.leon@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("images/leon.jpg"),
                ),
                onDetailsPressed: () {
                  mySnackbar("My Profile", context);
                },
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                mySnackbar("I'm Home", context);
              },
            ),
            ListTile(
              title: const Text("Call"),
              leading: const Icon(Icons.call),
              onTap: () {
                mySnackbar("I'm Call", context);
              },
            ),
            ListTile(
              title: const Text("Exit"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                mySnackbar("I'm Exit", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
