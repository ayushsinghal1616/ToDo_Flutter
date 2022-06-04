import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/Components/task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return FlatButton(
        onPressed: (){},
        onLongPress: (){
           context.read<TaskData>().deleteTask(index);
        },
        child: TaskTile(
          taskTitle: (context.watch<TaskData>().tasks)[index].taskName!,
          value: context.watch<TaskData>().tasks[index].isDone,
          onPressing: (bool? newValue) {
            context.read<TaskData>().ToggleTask(index);
          },
        ),
      );
    },itemCount: context.watch<TaskData>().tasks.length,
    );

  }
}


