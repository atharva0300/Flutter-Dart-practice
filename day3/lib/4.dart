import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: MaterialBanner(
          content: const Text('Error message text'),
          leading: CircleAvatar(child: Icon(Icons.delete)),
          actions: [
            TextButton(
              child: const Text('ACTION 1'),
              onPressed: null,
            ),
            TextButton(
              child: Text('ACTION 2'),
              onPressed: null,
            )
          ]),
    ));
  }
}
