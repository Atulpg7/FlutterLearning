import 'package:flutter/material.dart';

void main() {
  runApp(HomeUI());
}

class HomeUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: false,
        ),
        body: Container(
          child: Center(child: Text("Flutter App")),
        ),
      ),
    );
  }
}
