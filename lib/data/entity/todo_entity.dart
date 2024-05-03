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
  String content;
  @HiveField(2)
  int startTime;
  @HiveField(3)
  int endTime;

  TodoEntity({
    required this.date,
    required this.content,
    required this.startTime,
    required this.endTime,
  });
}