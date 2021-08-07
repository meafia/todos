import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) onChangedCallBack;
  final void Function() deleteTaskCallBack;
  TaskTile(
      {required this.isChecked,
      required this.onChangedCallBack,
      required this.taskTitle,
      required this.deleteTaskCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        onChanged: onChangedCallBack,
      ),
      title: Text(taskTitle),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
        onPressed: deleteTaskCallBack,
      ),
    );
  }
}
