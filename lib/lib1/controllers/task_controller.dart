import 'package:dars_49/lib1/model/task_model.dart';
import 'package:flutter/material.dart';

class TaskController with ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'Reja ', completed: true),
  ];

  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }

  void editTask(int index, String title) {
    _tasks[index].title = title;
    notifyListeners();
  }

  void toggleTaskCompletion(int index) {
    _tasks[index].completed = !_tasks[index].completed;
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
