import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class TodoList with _$TodoList {
  const factory TodoList({
    required Map<DateTime, List<Todo>> todos,
  }) = _TodoList;
}

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String id,
    required DateTime date,
    required String title,
    required String content,
    required int startHour,
    required int startMinute,
    required int endHour,
    required int endMinute,
    @Default(false) bool isCheck
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}