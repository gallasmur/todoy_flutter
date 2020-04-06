import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoyflutter/screens/tasks_screen.dart';

import 'models/task.dart';
import 'models/tasks_change_notifier.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TasksChangeNotifier(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
