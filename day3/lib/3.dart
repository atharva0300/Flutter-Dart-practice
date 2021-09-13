import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Row(children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: null,
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: null,
              )
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: null,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked),
    );
  }
}
