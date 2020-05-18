import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widgets/taskTitle.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({Key key, this.tasks}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:  (context, index){
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool checkboxState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}