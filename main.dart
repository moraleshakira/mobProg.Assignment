MORALES, PRECIOUS SHAKIRA 
IT3 R6

import 'package:flutter/material.dart';

const Color peach = Color.fromARGB(255, 203, 164, 1);

void main() {
  runApp(FrontPage());
}

class FrontPage extends StatelessWidget {
  const FrontPage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: peach,
      ),
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shak's Gallery"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainGallery()),
            );
          },
          child: Text("Go to Gallery"),
        ),
      ),
    );
  }
}

class MainGallery extends StatelessWidget {
  MainGallery();

  final List<String> imageUrls = [
    'https://picsum.photos/200',
    'https://picsum.photos/350',
    'https://picsum.photos/276',
    'https://picsum.photos/887',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Gallery'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image.network(imageUrls[index]),
          );
        },
      ),
    );
  }
}
