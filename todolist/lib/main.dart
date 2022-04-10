import 'package:flutter/material.dart';
import './screens/all_tasks.dart';
import 'package:provider/provider.dart';
import 'package:todolist/data/tasks_collection.dart';

void main() {
  runApp(const TodoList());
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskCollection>(
        create: (context) => TaskCollection(),
        child: MaterialApp(
          title: 'To Do List',
          theme: ThemeData(
            primarySwatch: Colors.teal,
          ),
          home: const AllTasks(title: 'To Do List'),
        ));
  }
}
