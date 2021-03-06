import 'package:flutter/material.dart';
import 'package:todo/screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'TO DO',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyTaskScreen(),
      ),
    );
  }
}