import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/components/tasks/task_preview.dart';

class TaskMaster extends StatelessWidget {
  const TaskMaster({Key? key, required this.taskList, this.onItemClick})
      : super(key: key);

  final List<Task> taskList;
  final Function(Task)? onItemClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: taskList
          .map<Widget>((t) => TaskPreview(
                task: t,
                onItemClick: () => onItemClick!(t),
              ))
          .toList(),
    ));
  }
}
