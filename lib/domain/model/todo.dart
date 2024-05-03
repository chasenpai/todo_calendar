import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class TodoList with _$TodoList {
  const factory TodoList({
    required Map<DateTime, List<Todo>> todos,
  }) = _TodoList;

  factory TodoList.fromJson(Map<String, dynamic> json) => _$TodoListFromJson(json);
}

@freezed
class Todo with _$Todo {
  const factory Todo({
    required DateTime date,
    required String content,
    required int startTime,
    required int endTime,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}