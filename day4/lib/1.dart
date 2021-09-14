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
              title: Text(
                "Child vs Children",
              ),
              shadowColor: Colors.black,
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Text('Container 1'),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: Text('Container 2'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: Text('Container 3'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purple,
                  child: Text('Container 4'),
                ),
              ],
            )));
  }
}
