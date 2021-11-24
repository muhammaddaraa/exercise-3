import 'package:exercise3/models/todo.dart';
import 'package:flutter/material.dart';
import 'bar.dart';
import 'body.dart';

class TodoListScreen extends StatefulWidget {
  final List _list;

  TodoListScreen(this._list);
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(''),
          body: Body(),
        ),
      ),
    );
  }
}
