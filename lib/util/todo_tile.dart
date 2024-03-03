// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;


  ToDoTile({
    super.key,
    required this.onChanged,
    required this.taskCompleted,
    required this.taskName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [

            //checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(14)
        ),
      ),
    );
  }
}