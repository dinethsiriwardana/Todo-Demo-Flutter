class TodoResponse {
  final int total;
  final int totalPages;
  final int currentPage;
  final List<Todo> data;

  TodoResponse({
    required this.total,
    required this.totalPages,
    required this.currentPage,
    required this.data,
  });

  factory TodoResponse.fromJson(Map<String, dynamic> json) {
    return TodoResponse(
      total: json['total'] ?? 0,
      totalPages: json['totalPages'] ?? 0,
      currentPage: json['currentPage'] ?? 1,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((item) => Todo.fromJson(item as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'totalPages': totalPages,
      'currentPage': currentPage,
      'data': data.map((todo) => todo.toJson()).toList(),
    };
  }
}

// Import the Todo model
class Todo {
  final int id;
  final String userId;
  final String title;
  final bool completed;
  final DateTime createdAt;
  final DateTime updatedAt;

  Todo({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      userId: json['userId'] ?? '',
      title: json['title'],
      completed: json['completed'] ?? false,
      createdAt: DateTime.parse(
        json['createdAt'] ?? DateTime.now().toIso8601String(),
      ),
      updatedAt: DateTime.parse(
        json['updatedAt'] ?? DateTime.now().toIso8601String(),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'completed': completed,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
