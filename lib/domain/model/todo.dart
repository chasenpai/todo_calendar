import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class TodoList with _$TodoList {
  const factory TodoList({
    required Map<DateTime, List<Todo>> todos,
  }) = _TodoList;
}

@freezed
class Todo with _$Todo {
  const factory Todo({
    required DateTime date,
    required String title,
    required String content,
    required int startHour,
    required int startMinute,
    required int endHour,
    required int endMinute,
  }) = _Todo;
}