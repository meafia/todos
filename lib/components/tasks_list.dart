import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/components/task_tile.dart';
import 'package:todos/models/task.dart';
import 'package:todos/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  final bool? completed;
  TasksList({this.completed});
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemCount: tasks.tasksCount,
          itemBuilder: (context, i) {
            Task task = tasks.tasksData[i];
            if (completed == null || completed == task.done) {
              return TaskTile(
                taskTitle: task.name,
                isChecked: task.done,
                onChangedCallBack: (value) {
                  tasks.toggleTaskDone(i);
                },
                deleteTaskCallBack: () {
                  tasks.removeTask(i);
                },
              );
            }
            return SizedBox();
          },
        );
      },
    );
  }
}
