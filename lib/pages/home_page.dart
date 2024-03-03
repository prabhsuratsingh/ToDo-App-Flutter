import 'package:flutter/material.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        title: Center(child: Text("TO DO")),
        elevation: 8.0,
        shadowColor: Colors.black,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make Tutorial",
            taskCompleted: true,
            onChanged: (p0) {} ,
          ),
          ToDoTile(
            taskName: "Do Exercise",
            taskCompleted: false,
            onChanged: (p0) {} ,
          ),
        ],
      ),
    );
  }
}