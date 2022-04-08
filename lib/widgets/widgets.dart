// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(leading: Text('Buy milk', style: TextStyle(decoration: isChecked ?TextDecoration.lineThrough : null),), trailing: TaskCheckBox(isChecked),),
        ListTile(
          leading: Text('Buy eggs'),
          trailing: TaskCheckBox(isChecked),
        ),
        ListTile(
          leading: Text('Buy chocolate'),
          trailing: TaskCheckBox(isChecked),
        ),
      ],
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  TaskCheckBox(this.checkBoxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: (bool ? Newval) {
        // setState(() {
        //   isChecked = Newval!;
        // });
      },
    );
  }
}
