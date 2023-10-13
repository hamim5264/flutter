import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyScreen(),
      debugShowCheckedModeBanner: true,
    );
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5',];
  List<String> selectedItems = [];

  void toggleSelection(String item) {
    setState(() {
      if (selectedItems.contains(item)) {
        selectedItems.remove(item);
      } else {
        selectedItems.add(item);
      }
    });
  }

  void showSelectedItemsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selected Items'),
          content: Text('Number of selected items: ${selectedItems.length}'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Widget buildListItem(String item) {
    return InkWell(
      onTap: () {
        toggleSelection(item);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        color: selectedItems.contains(item) ? Colors.blue : Colors.white,
        child: Text(item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selection Screen'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return buildListItem(items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSelectedItemsDialog();
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}