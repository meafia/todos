import 'package:flutter/material.dart';
import 'package:todos/components/tab_label.dart';
import 'package:todos/components/tasks_list.dart';
import 'package:todos/screens/add_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ToDoS'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddScreen()));
              },
            )
          ],
          bottom: TabBar(
            tabs: [
              TabLabel(label: 'All'),
              TabLabel(label: 'Completed'),
              TabLabel(label: 'Incompleted'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TasksList(),
            TasksList(
              completed: true,
            ),
            TasksList(
              completed: false,
            ),
          ],
        ),
      ),
    );
  }
}
