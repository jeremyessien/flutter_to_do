import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      TaskList(),
        TaskList(),
        TaskList(),
      ],
    );
  }
}
