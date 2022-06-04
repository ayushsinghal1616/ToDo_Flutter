import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class bottomContainerWidget extends StatefulWidget {


  @override
  State<bottomContainerWidget> createState() => _bottomContainerWidgetState();
}

class _bottomContainerWidgetState extends State<bottomContainerWidget> {
  late String newTaskName;

  @override
  Widget build(BuildContext context) {
    return Container(

      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
             TextField(
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.lightBlueAccent),
              autofocus: true,
              
              onSubmitted: (newText){
                  newTaskName=newText;
              },
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: (){
                context.read<TaskData>().addNewTask(newTaskName);
                Navigator.pop(context);
                },
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// onPress: (newTaskName) {
// setState((){
// context.watch<TaskData>().tasks.add(Task(taskName: newTaskName));
// Navigator.pop(context);
// });
// },