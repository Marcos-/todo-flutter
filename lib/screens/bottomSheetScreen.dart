

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {

  final Function addTodoCallback;

  const BottomSheetScreen({Key key, this.addTodoCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)
          ),
        ),
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Tarefa",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 34,
//              fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              autofocus: true,
              onChanged: (value){
                title = value;
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: null,
                hintText: 'Escreva sua nota',
              ),
            ),
            SizedBox(height: 20,),
            FlatButton(
              onPressed: (){
                addTodoCallback(title);
              },
              child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 24)),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.lightBlueAccent)
              ),
            )
          ],
        ),
      ),
    );
  }



}