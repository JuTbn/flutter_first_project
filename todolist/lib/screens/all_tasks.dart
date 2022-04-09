import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/components/tasks/task_details.dart';
import 'package:todolist/components/tasks/task_master.dart';
import 'package:todolist/data/tasks.dart' as data;

class AllTasks extends StatefulWidget {
  const AllTasks({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AllTasks> createState() => _AllTasksState();
}

class _AllTasksState extends State<AllTasks> {
  Task? _currentTask;

  void onItemClick(Task task) {
    setState(() {
      _currentTask = task;
    });
  }

  void onItemDelete(Task task) {
    data.tasks.remove(task);
    setState(() {
      _currentTask = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: [
          TaskDetail(task: _currentTask, onDelete: onItemDelete),
          TaskMaster(
            taskList: data.tasks,
            onItemClick: onItemClick,
          )
        ]));
  }
}
