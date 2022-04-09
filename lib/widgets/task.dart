// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool isChecked = false;

  void checkBoxCallBack(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Text(
            'Buy milk',
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: TaskCheckBox(isChecked, checkBoxCallBack),
        ),
        ListTile(
          leading: Text(
            'Buy eggs',
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: TaskCheckBox(isChecked, checkBoxCallBack),
        ),
        ListTile(
          leading: Text(
            'Buy chocolate',
            style: TextStyle(
                decoration: isChecked ? TextDecoration.lineThrough : null),
          ),
          trailing: TaskCheckBox(isChecked, checkBoxCallBack),
        ),
      ],
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  const TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
