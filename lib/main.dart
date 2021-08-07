import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/tasks_data.dart';
import 'package:todos/screens/tasks_screen.dart';

void main() {
  runApp(TodosApp());
}

class TodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: TasksScreen(),
      ),
    );
  }
}
