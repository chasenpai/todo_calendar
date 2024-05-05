import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'todo_entity.g.dart';

@HiveType(typeId: 0)
class TodoListEntity extends HiveObject {
  @HiveField(0)
  Map<DateTime, List<TodoEntity>> todos;

  TodoListEntity({
    required this.todos,
  });
}

@HiveType(typeId: 1)
class TodoEntity extends HiveObject {
  @HiveField(0)
  DateTime date;
  @HiveField(1)
  String title;
  @HiveField(2)
  String content;
  @HiveField(3)
  int startHour;
  @HiveField(4)
  int startMinute;
  @HiveField(5)
  int endHour;
  @HiveField(6)
  int endMinute;

  TodoEntity({
    required this.date,
    required this.title,
    required this.content,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
  });
}