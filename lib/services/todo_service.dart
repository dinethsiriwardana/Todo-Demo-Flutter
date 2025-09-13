import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:todo_demo/models/responce_model.dart';

class TodoService {
  final String baseUrl =
      'https://todo-test-app-bvamb3h2hrgsarer.eastus2-01.azurewebsites.net/api';

  // Add methods for CRUD operations here
  String? get _userId => FirebaseAuth.instance.currentUser?.uid;

  Map<String, String> get header => {
    'Content-Type': 'application/json',
    if (_userId != null) 'user-id': _userId!,
  };

  Future<List<Todo>> fetchTodos() async {
    try {
      final url = Uri.parse('$baseUrl/todos');

      final response = await http.get(url, headers: header);

      // Handle the response
      if (response.statusCode == 200) {
        print('Todos fetched successfully: ${response.body}');
        final todoResponse = TodoResponse.fromJson(
          Map<String, dynamic>.from(
            jsonDecode(response.body) as Map<String, dynamic>,
          ),
        );
        return todoResponse.data;
      } else {
        print('Failed to fetch todos: ${response.statusCode}');
        throw Exception('Failed to fetch todos');
      }
    } on Exception catch (e) {
      // TODO
      print('Error fetching todos: $e');
      throw Exception('Error fetching todos: $e');
    }
  }

  // Add todos
  Future<void> addTodo(String title) async {
    try {
      final url = Uri.parse('$baseUrl/todos');

      final body = jsonEncode({'title': title, 'completed': false});

      final response = await http.post(url, headers: header, body: body);

      // Handle the response
      if (response.statusCode == 201) {
        print('Todo added successfully: ${response.body}');
      } else {
        print('Failed to add todo: ${response.statusCode}');
        throw Exception('Failed to add todo');
      }
    } on Exception catch (e) {
      // TODO
      print('Error adding todo: $e');
      throw Exception('Error adding todo: $e');
    }
  }

  // Update todos
  Future<void> updateTodo(int id, String title, bool completed) async {
    try {
      final url = Uri.parse('$baseUrl/todos/$id');
      final body = jsonEncode({'title': title, 'completed': completed});
      final response = await http.put(url, headers: header, body: body);
      // Handle the response
      if (response.statusCode == 200) {
        print('Todo updated successfully: ${response.body}');
      } else {
        print('Failed to update todo: ${response.statusCode}');
        throw Exception('Failed to update todo');
      }
    } on Exception catch (e) {
      // TODO
      print('Error updating todo: $e');
      throw Exception('Error updating todo: $e');
    }
  }
}
