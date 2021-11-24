import 'package:exercise3/models/task.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<Task> _tasks;
  final removeTask;
  final completeTask;

  Body(this._tasks, this.removeTask, this.completeTask);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _tasks.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
          title: Text('Task title',
              style: TextStyle(decoration: TextDecoration.lineThrough)),
          onTap: () {},
          onLongPress: () {}),
    );
  }
}
