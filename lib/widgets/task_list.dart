import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyflutter/models/task.dart';
import 'package:todoyflutter/models/tasks_change_notifier.dart';

import '../constants.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksChangeNotifier>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          Task task = taskData.getTask(index);
          return TaskTile(
            title: task.title,
            state: task.state,
            callback: (value) {
              taskData.updateTask(task);
            },
            callbackLP: () {
              taskData.removeTask(index);
            },
          );
        },
        itemCount: Provider.of<TasksChangeNotifier>(context).length(),
      );
    });
  }
}
