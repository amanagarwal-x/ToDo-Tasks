import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoapp/models/task.dart';

bool isChecked = false;

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "This is task 1"),
    Task(name: "This is task 2")
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskListTile(
          taskText: "This is task 1",
        ),
        TaskListTile(
          taskText: "This is task 2",
        ),
      ],
    );
  }
}
