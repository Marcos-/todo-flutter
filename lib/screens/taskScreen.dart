import 'package:flutter/material.dart';
import 'package:todo/screens/BottomSheetScreen.dart';
import 'package:todo/widgets/taskList.dart';
import 'package:todo/models/task_data.dart';
import 'package:provider/provider.dart';

class MyTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 60.0, right: 30, bottom: 30, left: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 60,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Coisas para fazer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} tarefa${Provider.of<TaskData>(context).taskCount == 1 ? '' : 's'}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 16, right: 32, left: 32),
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20),
              ),
            ),
            child: TaskList(),
          ),
        )
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: BottomSheetScreen(),
                  )
              )
          );
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}