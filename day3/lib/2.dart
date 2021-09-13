import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.close),
        title: Text('1 selected'),
        actions: [
          Icon(Icons.file_upload),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.delete),
          ),
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.black87,
      ),
    ));
  }
}
