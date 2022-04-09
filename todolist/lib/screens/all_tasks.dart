import 'package:flutter/material.dart';
import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/data/tasks.dart' as data;

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: TaskMaster(
          taskList: data.tasks,
        ));
  }
}
