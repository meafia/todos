import 'package:flutter/material.dart';
import 'package:todos/models/task.dart';
import 'dart:collection';

class TasksData extends ChangeNotifier {
  List<Task> _data = [
    Task(name: 'go to Gym', done: false),
    Task(name: 'read a book', done: true),
    Task(name: 'watch a movie', done: true),
  ];

  UnmodifiableListView<Task> get tasksData {
    return UnmodifiableListView(_data);
  }

  int get tasksCount {
    return _data.length;
  }

  void addTask(String name) {
    _data.add(Task(name: name));
    notifyListeners();
  }

  void toggleTaskDone(int index) {
    _data[index].toggleDone();
    notifyListeners();
  }

  void removeTask(int index) {
    _data.removeAt(index);
    notifyListeners();
  }
}
