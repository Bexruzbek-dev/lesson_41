// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lesson_41/homework/models/todo.dart';

class TodoItem extends StatefulWidget {
  final Todo todo;

  TodoItem({super.key, required this.todo});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool checker = false; // Initialize checker state

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: InkWell(
        onTap: () {
          setState(() {
            checker = !checker; // Toggle the checker state
          });
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: checker ? Icon(Icons.done) : null, // Show icon if checked
        ),
      ),
      title: Text(widget.todo.title),
      subtitle: Text(widget.todo.description),
      tileColor: Colors.teal.shade300,
    );
  }
}
