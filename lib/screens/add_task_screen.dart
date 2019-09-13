import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({this.addTaskCallback});
  final Function addTaskCallback;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                child: Text('Add'),
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                textColor: Colors.white,
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ));
  }
}
