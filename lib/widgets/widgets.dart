// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

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
        ListTile(
            leading: Text('Buy milk'),
            trailing: Checkbox(
              value: false,
              onChanged: (bool? value) {},
            )),
        ListTile(
          leading: Text('Buy eggs'),
          trailing: Checkbox(
            value: false,
            onChanged: (bool? value) {},
          ),
        ),
        ListTile(
          leading: Text('Buy chocolate'),
          trailing: Checkbox(
            value: false,
            onChanged: (bool? value) {},
          ),
        ),
      ],
    );
  }
}

