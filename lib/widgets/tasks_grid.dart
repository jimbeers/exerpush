import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tasks.dart';
import '../providers/task_data.dart';
import 'task_item.dart';

class TaskGrid extends StatelessWidget {
  final bool showAll;

  const TaskGrid(this.showAll);

  @override
  Widget build(BuildContext context) {
    final tasksData = Provider.of<Tasks>(context);
    final tasks = tasksData.items;
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: tasks.length,
      itemBuilder: ((context, i) => TaskItem(tasks[i])),
    );
  }
}
