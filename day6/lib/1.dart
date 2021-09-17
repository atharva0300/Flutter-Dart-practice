import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final itemkey = ValueKey<String>("item-id-0025");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Press the Volumne button",
            style: TextStyle(fontFamily: "BebasNeue", fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            child: MyStatefulWidget(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.email),
                Icon(Icons.tablet_mac),
                Text("Developed by Atharva Pingale"),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

int _volume = 0;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  final int id = 12;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: "Increase Volume bt 10",
          onPressed: () {
            setState(() {
              _volume = _volume + 10;
            });
          },
        ),
        Text("Volume : $_volume"),
        Text("Id : ${widget.id}"),
      ],
    );
  }
}
