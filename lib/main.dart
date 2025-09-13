import 'package:flutter/material.dart';
import 'package:todo_demo/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
