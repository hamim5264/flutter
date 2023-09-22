import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: true,
      title: "Data Passing One Route to Another Route",
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsScreen()));
                },
                child: Text("Go to Settings")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderssScreen()));
                },
                child: Text("Go to Orders")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductListScreen()));
                },
                child: Text("Go to ProductList")),
          ],
        ),
      ),
    );
  }
}

///Route-1
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (route) => false);
              },
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}

///Route-2
class OrderssScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Orders"),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
              child: Text("Go to Settings"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Home")),
          ],
        ),
      ),
    );
  }
}

///Route-3
class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product list'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetailsScreen(
                    ProductName: index.toString(),
                  );
                })).then((value) {
                  print(value);
                });
              },
              title: Text(index.toString()),
              subtitle: Text('Product details $index'),
            );
          }
          ),
    );
  }
}

///Route-4
class ProductDetailsScreen extends StatelessWidget {
  final String ProductName; //mandatory/required
  final double? Price;

  const ProductDetailsScreen(
      {super.key, required this.ProductName, this.Price}); //optional

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(ProductName),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "my-name$ProductName");
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
