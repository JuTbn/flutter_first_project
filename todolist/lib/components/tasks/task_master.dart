import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/components/tasks/task_preview.dart';
import 'package:todolist/data/tasks_collection.dart';

class TaskMaster extends StatelessWidget {
  const TaskMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskCollection>(
      builder: (context, collection, child) => Expanded(
          child: ListView.separated(
        separatorBuilder: (context, i) => const Divider(),
        itemCount: collection.tasks.length,
        itemBuilder: (context, i) => TaskPreview(
          task: collection.tasks[i],
        ),
      )),
    );
  }
}
