import 'package:flutter/material.dart';

import './task_data.dart';

class Tasks with ChangeNotifier {
  List<TaskData> _items = [
    TaskData(
        description: 'plank for 1 minutes, keep your back straight',
        id: 'plank',
        title: 'plank',
        reps: 1),
    TaskData(
      title: 'banded side steps',
      id: 'a1',
      description: 'put a band on you ankles, side step each way',
      reps: 12,
    ),
    TaskData(
      title: 'left leg pelvic lift',
      id: 'a1',
      description:
          'lie on you back, raise one leg up 60 degrees, raise your hips pause and than lower',
      reps: 10,
    ),
    TaskData(
      title: 'right leg pelvic lift',
      id: 'a1',
      description:
          'lie on you back, raise one leg up 60 degrees, raise your hips pause and than lower',
      reps: 10,
    ),
    TaskData(
      title: 'step lower left leg',
      id: 'a1',
      description:
          'Stand on you left leg, do a one legged squat on a step, getting as low as you can.  Put the downward leg forward and keep your weight back.',
      reps: 10,
    ),
    TaskData(
      title: 'step lower right leg',
      id: 'a1',
      description:
          'Stand on you right leg, do a one legged squat on a step, getting as low as you can.  Put the downward leg forward and keep your weight back.',
      reps: 10,
    ),
  ];

  Tasks();

  List<TaskData> get items {
    return [..._items];
  }

  TaskData findById(String id) {
    return _items.firstWhere((prod) => prod.id == id, orElse: null);
  }
}
