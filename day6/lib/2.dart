import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Person here"),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.info),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Item 1"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.train),
                title: const Text("Items 2"),
                onTap: () {},
              ),
            ],
          ),
        ),
        endDrawer: Drawer(),
        body: const Center(
          child: Text("Wow nice book!"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
