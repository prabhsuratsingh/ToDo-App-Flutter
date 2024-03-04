import 'package:flutter/material.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  //list of todo task
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];

  //checkbox was tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        title: Center(child: Text("TO DO")),
        elevation: 8.0,
        shadowColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            onChanged:(value) => checkBoxChanged(value, index) ,
            taskCompleted: toDoList[index][1],
            taskName: toDoList[index][0],
          );
        },
      ),
    );
  }
}