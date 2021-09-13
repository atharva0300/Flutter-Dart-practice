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
      leading: IconButton(
        icon: Icon(Icons.ac_unit),
        onPressed: null,
        color: Colors.blue,
      ),
      elevation: 12,
      title:
          Text('Hello! Atharva here!', style: TextStyle(color: Colors.black)),
      actions: [
        IconButton(
          icon: Icon(Icons.accessible),
          onPressed: null,
          color: Colors.blue,
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: null,
          color: Colors.white,
        ),
        Icon(Icons.favorite),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.search),
        ),
        IconButton(
          icon: Icon(Icons.more_vert),
          onPressed: null,
          color: Colors.white,
        )
      ],
      backgroundColor: Colors.purple,
    )));
  }
}
