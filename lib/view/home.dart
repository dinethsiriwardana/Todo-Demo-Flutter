import 'package:flutter/material.dart';
import 'package:todo_demo/models/todo_models.dart';
import 'package:todo_demo/services/auth.dart';
import 'package:todo_demo/services/todo_service.dart';
import 'package:todo_demo/view/todo_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState

    TodoService().fetchTodos();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
        // logout button
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Auth().signOut();
            },
          ),
        ],
      ),
      body: TodoUi(),
    );
  }
}
