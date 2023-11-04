import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhotoListScreen(),
    );
  }
}

class PhotoListScreen extends StatefulWidget {
  const PhotoListScreen({super.key});

  @override
  _PhotoListScreenState createState() => _PhotoListScreenState();
}

class _PhotoListScreenState extends State<PhotoListScreen> {
  List<dynamic> _photos = [];
  bool _isLoading = false;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _fetchPhotos();
  }

  Future<void> _fetchPhotos() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      if (response.statusCode == 200) {
        setState(() {
          _photos = json.decode(response.body);
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Failed to load photos';
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'An error occurred';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery App'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : ListView.builder(
                  itemCount: _photos.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(_photos[index]['thumbnailUrl']),
                      ),
                      title: Text(_photos[index]['title']),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoDetailScreen(
                              id: _photos[index]['id'],
                              title: _photos[index]['title'],
                              imageUrl: _photos[index]['url'],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
    );
  }
}

class PhotoDetailScreen extends StatelessWidget {
  final int id;
  final String title;
  final String imageUrl;

  const PhotoDetailScreen(
      {Key? key, required this.id, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(imageUrl),
          const SizedBox(height: 20),
          Text(
            'Title: $title',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text(
            'ID: $id',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
