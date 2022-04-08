// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/tasks_screens.dart';
void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TaskScreen(),
  );
  }
}


