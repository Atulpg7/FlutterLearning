import 'package:flutter/material.dart';
import 'package:startup_namer/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Chatting App",
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
