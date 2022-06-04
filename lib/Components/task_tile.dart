import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool? value;
  final void Function(bool? value) onPressing;

  TaskTile({required this.taskTitle,this.value=false,required this.onPressing});

  @override
  Widget build(BuildContext context) {
    value ?? false;// provides a default value if isChecked is null
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          //exclamation mark after isChecked changes the value from bool? to bool
            decoration: value! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: value,
        onChanged: onPressing,
      )
    );
  }
}

