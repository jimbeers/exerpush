import 'package:flutter/foundation.dart';

class TaskData with ChangeNotifier {
  final String title;
  final String id;
  final String description;
  final int reps;

  TaskData({
    @required this.title,
    @required this.id,
    @required this.description,
    this.reps = 1,
  });
}
