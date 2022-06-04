import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';


class TaskData extends ChangeNotifier{
  List<Task> tasks = [];

  void addNewTask(String taskName){
    tasks.add(Task(taskName: taskName));
    notifyListeners();
  }
  void ToggleTask(int index){
    tasks[index].toggle();
    notifyListeners();
  }
  void deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}