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
        title: Text("Installing Packages"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
              child: Text(
            "Ready to learn how to install a package?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
              fontFamily: "Arial",
            ),
            textAlign: TextAlign.center,
          ))),
    ));
  }
}
