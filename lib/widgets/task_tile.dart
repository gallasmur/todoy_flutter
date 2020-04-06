import 'package:flutter/material.dart';
import 'package:todoyflutter/models/task.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool state;
  final Function callback;
  final Function callbackLP;

  TaskTile({this.title, this.state, this.callback, this.callbackLP});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            decoration: state ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: state,
          onChanged: callback,
        ),
        onLongPress: callbackLP,
      ),
    );
  }
}
