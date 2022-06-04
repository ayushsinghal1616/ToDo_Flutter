import 'package:flutter/material.dart';

class Task{

   String? taskName;
   bool isDone;

  void toggle(){
    isDone=!isDone;
  }

  Task({this.isDone=false,this.taskName});
}
