import 'package:exercise3/models/mock_todos.dart';

import '../../models/todo.dart';
import 'package:flutter/material.dart';
import '../task_list/task_list_screen.dart';

class TodoListTile extends StatefulWidget {
  final int index;
  final List tasks;

  TodoListTile(this.index, this.tasks);
  @override
  _TodoListTileState createState() => _TodoListTileState();
}

class _TodoListTileState extends State<TodoListTile> {
  int _completedTaskLenght(tasks) {
    return tasks.fold(0, (sum, next) => sum + 1);
  }

  void navigateToTaskList() async {
    final result = await Navigator.pushNamed(context, '/taskList',
        arguments: Todo.copy(widget.tasks[widget.index]));

    if (result != null) {
      setState(() => widget.tasks[widget.index] = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.tasks[widget.index].title),
      subtitle: Text(
          'This list has ${_completedTaskLenght(widget.tasks[widget.index].tasks).toString()} task(s)'),
      trailing: CircleAvatar(
        child: Text(widget.tasks[widget.index].percent.round().toString()),
      ),
      onTap: () => navigateToTaskList(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text('Todo title'),
        subtitle: Text('sub title '),
        trailing: CircleAvatar(
          child: Text('100'),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskListScreen(myTodoList[0]),
            ),
          );
        },
      ),
    );
  }
}
