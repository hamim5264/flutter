import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
      debugShowCheckedModeBanner: true,
    );
  }
}
class homeScreen extends StatelessWidget{
  mySnackbar(context, msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  List<String> imageUrls = [
    'https://images.unsplash.com/photo-1571988840298-3b5301d5109b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1615796153287-98eacf0abb13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1583083527882-4bee9aba2eea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1977&q=80',
    'https://images.unsplash.com/photo-1606491048802-8342506d6471?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1933&q=80',
    'https://images.unsplash.com/photo-1597626133663-53df9633b799?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60'
  ];

  List<String> imageCaptions = [
    'photo 0',
    'photo 1',
    'photo 2',
    'photo 3',
    'photo 4',
    'photo 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome to My Photo Gallery!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search for photos...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                //crossAxisSpacing: 8.0,
                //mainAxisSpacing: 8.0,
              ),
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Clicked on ${imageCaptions[index]}'),
                      ),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          imageUrls[index],
                          height: 80,
                          width: 80,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          imageCaptions[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:
                  Image.network('https://images.unsplash.com/photo-1571988840298-3b5301d5109b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80', )),
              title: Text('Photo 1'),
              subtitle: Text('Description for photo 1'),
            ),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:
                  Image.network('https://images.unsplash.com/photo-1615796153287-98eacf0abb13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80', )),
              title: Text('Photo 2'),
              subtitle: Text('Description for photo 2'),
            ),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:
                  Image.network('https://images.unsplash.com/photo-1608848461950-0fe51dfc41cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80')),
              title: Text('Photo 3'),
              subtitle: Text('Description for photo 3'),
            ),
            Center(
              child: IconButton(onPressed: (){mySnackbar(context, "Photos Uploaded Successfully");},
                icon: Icon(Icons.upload_rounded, size: 50, color: Colors.blue,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}