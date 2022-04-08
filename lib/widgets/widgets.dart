// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(leading: Text('Buy milk'), trailing: TaskCheckBox()),
        ListTile(
          leading: Text('Buy eggs'),
          trailing: TaskCheckBox(),
        ),
        ListTile(
          leading: Text('Buy chocolate'),
          trailing: TaskCheckBox(),
        ),
      ],
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (bool ? Newval) {
        setState(() {
          isChecked = Newval!;
        });
      },
    );
  }
}
