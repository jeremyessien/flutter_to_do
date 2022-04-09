import 'package:flutter/material.dart';
class Task {
  final String name;
   bool isDone = false;
   Task({required this.isDone, required this.name});

   void toggleDone() {
     isDone = ! isDone;
   }

}