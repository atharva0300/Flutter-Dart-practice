import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  //Widgets app   //Material app //Cupertino App
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mytext = "Change my Name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
          child: SingleChildScrollView(
              child: Card(
                  child: Column(children: <Widget>[
        SizedBox(
          height: 200,
        ),
        Text(
          mytext,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: _nameController,
          decoration: InputDecoration(
              hintText: "Enter Some text",
              labelText: "Name",
              border: OutlineInputBorder()),
        )
      ])))),
      drawer: Drawer(
        child: ListView(padding: const EdgeInsets.all(0), children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Atharva Pingale"),
              accountEmail: Text("atharva0300@gmail.com")),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Atharva Pingale"),
            subtitle: Text("Subtitle"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Person 2"),
            subtitle: Text("Subtitle 2"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytext = _nameController.text;
        },
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
