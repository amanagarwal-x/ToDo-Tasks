import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskListTile extends StatelessWidget {
  final String taskText;
  final bool isChecked = false;
  TaskListTile({this.taskText});

  void checkBoxState(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskText,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: checkBoxState,
          onChanged: toggleCheckBoxState);,
    );
  }
}

(bool checkBoxState) {
setState(() {
isChecked = checkBoxState;
});
},

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkBoxState,
        onChanged: toggleCheckBoxState);
  }
}
