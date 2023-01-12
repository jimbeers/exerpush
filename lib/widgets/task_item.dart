import 'package:flutter/material.dart';

import '../providers/task_data.dart';

class TaskItem extends StatelessWidget {
  final TaskData t;
  TaskItem(this.t);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(
        '${t.title}         ${t.reps}',
        style: TextStyle(fontSize: 24),
      ),
      subtitle: Text(t.description),
    ));
  }
}
