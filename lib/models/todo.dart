import 'task.dart';

class Todo {
  String title;

  List<Task> tasks;

  Todo({required this.title, required this.tasks});
  Todo.copy(Todo from)
      : this(
            title: from.title,
            tasks: [for (Task tsak in from.tasks) Task.copy(tsak)]);
}
