import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      builder: (context) => TaskData(),
          child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}