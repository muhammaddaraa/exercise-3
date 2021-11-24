import 'dart:html';
import 'package:flutter/material.dart';
import '../models/todo.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(50.0);
  String title;
  Bar(this.title);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text('Task list of ${title}'),
      centerTitle: true,
    );
  }
}
