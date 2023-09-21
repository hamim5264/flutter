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
    'Photo 0',
    'Photo 1',
    'Photo 2',
    'Photo 3',
    'Photo 4',
    'Photo 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(' Welcome to My Photo Gallery!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Search for photos...',
                border: OutlineInputBorder(),
              ),
            ),
            Divider(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: imageUrls.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () { mySnackbar(context, "Clicked on ${imageCaptions[index]}");},
                  child: Column(
                    children: [
                      Image.network(
                        imageUrls[index],
                        height: 100,
                        width: 100,
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
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1571988840298-3b5301d5109b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
                ),
                radius: 25,
              ),
              title: Text("Photo-1"),
              subtitle: Text("Description for Photo 1"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1571988840298-3b5301d5109b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
                ),
                radius: 25,
              ),
              title: Text("Photo-2"),
              subtitle: Text("Description for Photo 2"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1571988840298-3b5301d5109b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
                ),
                radius: 25,
              ),
              title: Text("Photo-3"),
              subtitle: Text("Description for Photo 3"),
            ),

            Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(onPressed: (){mySnackbar(context, "Photos Uploaded Successfully");},
                  icon: Icon(Icons.upload_rounded, size: 30, color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}