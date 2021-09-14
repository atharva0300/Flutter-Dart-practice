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
              title: Text("Adding Images"),
              centerTitle: true,
              backgroundColor: Colors.greenAccent,
            ),
            backgroundColor: Colors.grey,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Center(
                    child: Image.asset('images/me_3.png'),
                  ),
                ),
                Container(
                  child: Text(
                    "Container 2",
                    textAlign: TextAlign.center,
                  ),
                  width: double.infinity,
                  color: Colors.green,
                  height: 200,
                ),
              ],
            )));
  }
}
