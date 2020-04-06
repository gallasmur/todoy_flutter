import 'package:flutter/material.dart';
import 'package:todoyflutter/models/task.dart';

class TasksChangeNotifier extends ChangeNotifier {
  List<Task> _taskList = [
    Task(title: 'Do the homework'),
    Task(title: 'Eat lunch'),
  ];

  void updateList(Task task) {
    _taskList.add(task);
    notifyListeners();
  }

  int length() {
    return _taskList.length;
  }

  Task getTask(int index) {
    return _taskList[index];
  }

  void updateTask(Task task) {
    task.toggleState();
    notifyListeners();
  }

  void removeTask(int index) {
    _taskList.removeAt(index);
    notifyListeners();
  }
}
