import '../models/task.dart';
import 'task.dart';
import 'todo.dart';

final myTodoList = <Todo>[
  Todo(
    title: 'MAP Project',
    tasks: [
      Task("Deliverable 1: Project propose and design", false),
      Task("Deliverable 2: Prototype 1", false),
      Task("Deliverable 3: Prototype 2", true),
      Task("Deliverable 4: Backend", false),
      Task("Deliverable 5: Release version", true),
    ],
  ),
  Todo(
    title: 'SQA Project',
    tasks: [
      Task('Deliverable 1: Test plan', true),
      Task('Deliverable 2: Test execution', false),
      Task('Deliverable 3: Test report', true),
    ],
  ),
  Todo(
    title: 'Web technology Project',
    tasks: [
      Task('Deliverable 1: Website configuration', false),
      Task('Deliverable 2: GUI', false),
      Task('Deliverable 3: Backend', false),
      Task('Deliverable 4: Deployment', true),
    ],
  ),
];
