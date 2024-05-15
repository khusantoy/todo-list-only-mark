import 'package:flutter/material.dart';
import 'package:todo_list_only_mark/widgets/task_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Map<String, dynamic>> tasks = [
    {'title': 'Shopping', 'status': false},
    {'title': 'Reading book', 'status': false},
    {'title': 'Cooking', 'status': false},
    {'title': 'Sleeping', 'status': false},
    {'title': 'Running', 'status': false},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                for (var task in tasks)
                  TaskWidget(title: task['title'], status: task['status'])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
