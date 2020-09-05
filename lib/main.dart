import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: false,
      ),
      body: Container(
        child: Center(child: Text("Hello there!")),
      ),
    );
  }
}
