import 'dart:math';

import 'package:exerpush/widgets/tasks_grid.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  bool _init = false;
  // void _initDatabase() {
  //   _init = true;
  //   DatabaseReference _testRef =
  //       FirebaseDatabase.instance.reference().child("test");
  //   _testRef.set('Hello world ${Random().nextInt(100)}');
  // }

  @override
  Widget build(BuildContext context) {
    // if (!_init) _initDatabase();
    return Scaffold(
      appBar: AppBar(
        title: Text('${FirebaseAuth.instance.currentUser.email}'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: TaskGrid(true),
    );
  }
}
