import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyflutter/models/task.dart';
import 'package:todoyflutter/models/tasks_change_notifier.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String text;

    return Container(
      padding: EdgeInsets.all(30.0),
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
              color: Colors.lightBlueAccent,
              fontSize: 40.0,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    const BorderSide(color: Colors.lightBlueAccent, width: 5.0),
              ),
            ),
            onChanged: (newtext) {
              text = newtext;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            onPressed: () {
              Provider.of<TasksChangeNotifier>(context, listen: false)
                  .updateList(Task(title: text));
              Navigator.pop(context);
            },
            //onPressed: widget.callback(Task(title: text)),
          ),
        ],
      ),
    );
  }
}
