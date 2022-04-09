// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final bool isChecked;
 final String taskTitle;
  TaskList({ required this.isChecked,  required this. taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: Text(
            'Buy milk',
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            // onChanged: checkBoxCallBack,
          ),
        );
  }
}

