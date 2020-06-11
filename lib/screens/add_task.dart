import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget addTaskScreen() {
  return Container(
    color: Color(0xFF757575),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 10),
            child: Text(
              "Add Task",
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 200,
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                  fillColor: Colors.lightBlueAccent),
            ),
          ),
          FlatButton(
            child: Text("Add"),
            color: Colors.lightBlueAccent,
            textColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}
