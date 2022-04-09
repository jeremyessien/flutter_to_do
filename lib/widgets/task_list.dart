// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'task.dart';
import 'package:flutter_to_do/models/tasks.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  List<Task> task = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy eggs', isDone: false),
    Task(name: 'Buy bread', isDone: false),


  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder( itemBuilder: (context, index) {
      return TaskList(isChecked: task[index].isDone, taskTitle: task[index].name);

    },
    itemCount: task.length,
    );
  }
}
