import 'package:exerpush/widgets/tasks_grid.dart';
import 'package:flutter/material.dart';

enum FilterOptions {
  notDone,
  all,
}

class TasksMainScreen extends StatefulWidget {
  static const routeName = 'tasks-main-screen';

  const TasksMainScreen();

  @override
  State<TasksMainScreen> createState() => _TasksMainScreenState();
}

class _TasksMainScreenState extends State<TasksMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get to work'),
      ),
      body: TaskGrid(true),
    );
  }
}
