import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/components/tasks/task_preview.dart';

class TaskMaster extends StatelessWidget {
  const TaskMaster({Key? key, required this.taskList}) : super(key: key);

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: taskList.map<Widget>((t) => TaskPreview(task: t)).toList(),
    );
  }
}
