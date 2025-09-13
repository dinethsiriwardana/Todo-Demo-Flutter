import 'package:flutter/material.dart';
import 'package:todo_demo/models/responce_model.dart';
import 'package:todo_demo/services/todo_service.dart';

class TodoUi extends StatefulWidget {
  const TodoUi({super.key});

  @override
  State<TodoUi> createState() => _TodoUiState();
}

class _TodoUiState extends State<TodoUi> {
  List<Todo> todos = [];
  TextEditingController todoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    fetchTodos();

    super.initState();
  }

  // Fetch todos
  Future<void> fetchTodos() async {
    todos = await TodoService().fetchTodos();
    setState(() {});
  }

  // Add Todo
  Future<void> addTodo(String title) async {
    await TodoService().addTodo(title);
    todoController.clear();
    fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Add todos
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: todoController,
                  decoration: const InputDecoration(
                    hintText: 'Enter todo title',
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Add todo logic here
                  addTodo(todoController.text);
                },
              ),
            ],
          ),
        ),

        // List view
        SizedBox(
          height: 500,
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                title: Text(todo.title),
                subtitle: Text('Completed: ${todo.completed}'),
                // Add a checkbox to mark as completed
                trailing: Checkbox(
                  value: todo.completed,
                  onChanged: (value) async {
                    // Update todo logic here
                    await TodoService().updateTodo(
                      todo.id,
                      todo.title,
                      value ?? false,
                    );
                    fetchTodos();
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
