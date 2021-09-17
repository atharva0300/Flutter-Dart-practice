import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final myList = List<int>.generate(100, (i) => i);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        shadowColor: Colors.yellowAccent,
        title: Text(
          "Flutter here!",
          style: TextStyle(
            fontFamily: "BebasNeue",
            fontSize: 50,
          ),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
        titleSpacing: 50,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            child: Text(
              "Atharva here",
              style: TextStyle(
                fontFamily: "BebasNeue",
                color: Colors.blue,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              color: Colors.green,
              height: 200,
              width: 200,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return Text("${myList[index]}");
                  })),
          Container(
            height: 100,
            width: 260,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: const Center(),
                    width: 100,
                    height: 90,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(3, 0),
                        ),
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.red,
                            Colors.blue,
                          ]),
                    )),
                Container(
                    height: 80,
                    width: 260,
                    color: Colors.blueGrey,
                    alignment: Alignment.center,
                    transform: Matrix4.rotationZ(-0.25),
                    child: const Text("Container",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ))),
                Stack(
                  children: [
                    Icon(Icons.person),
                    const Text("Hello"),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                Container(
                    color: Colors.white,
                    child: ElevatedButton.icon(
                      onPressed: null,
                      label: Text("Button"),
                      icon: Icon(Icons.account_circle_rounded),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
