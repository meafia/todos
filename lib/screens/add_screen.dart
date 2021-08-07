import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/models/tasks_data.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  String taskName = '';

  bool? chechBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a task'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskName = value;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('completed?'),
              Checkbox(
                  value: chechBoxValue,
                  onChanged: (value) {
                    setState(() {
                      chechBoxValue = value;
                    });
                  })
            ],
          ),
          ElevatedButton(
            onPressed: () {
              if (taskName.isNotEmpty) {
                Provider.of<TasksData>(context, listen: false)
                    .addTask(taskName, chechBoxValue!);
              }
              Navigator.pop(context);
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
