import 'package:flutter/material.dart';
import 'package:todo_calendar/config/router.dart';
import 'package:todo_calendar/data/entity/todo_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_calendar/util/theme.dart';

import 'config/di_setup.dart';

void main() async {

  configureDependencies();
  await Hive.initFlutter();
  Hive.registerAdapter<TodoListEntity>(TodoListEntityAdapter());
  Hive.registerAdapter<TodoEntity>(TodoEntityAdapter());
  await Hive.openBox<TodoListEntity>('todo.db');
  //Hive.deleteBoxFromDisk('todo.db');

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = MaterialTheme(TextTheme());
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: theme.light(),
      darkTheme: theme.dark(),
    );
  }
}

void inputDummyData() {
  Map<DateTime, List<TodoEntity>> todos1 = {
    DateTime.utc(2024, 4, 1) : [
      TodoEntity(
        date: DateTime.utc(2024, 4, 1),
        title: 'title',
        content: 'content',
        startHour: 12,
        startMinute: 30,
        endHour: 13,
        endMinute: 00,
      ),
      TodoEntity(
        date: DateTime.utc(2024, 4, 1),
        title: 'title',
        content: 'content',
        startHour: 14,
        startMinute: 30,
        endHour: 17,
        endMinute: 00,
      ),
    ],
    DateTime.utc(2024, 4, 22) : [
      TodoEntity(
        date: DateTime.utc(2024, 4, 22),
        title: 'title',
        content: 'content',
        startHour: 09,
        startMinute: 20,
        endHour: 09,
        endMinute: 50,
      ),
    ],
  };

  final todoList1 = TodoListEntity(
    todos: todos1,
  );
  final box = Hive.box<TodoListEntity>('todo.db');
  box.put('202404', todoList1);

  Map<DateTime, List<TodoEntity>> todos2 = {
    DateTime.utc(2024, 5, 1) : [
      TodoEntity(
        date: DateTime.utc(2024, 5, 1),
        title: 'title',
        content: 'content',
        startHour: 13,
        startMinute: 00,
        endHour: 14,
        endMinute: 00,
      ),
    ],
    DateTime.utc(2024, 5, 5) : [
      TodoEntity(
        date: DateTime.utc(2024, 5, 5),
        title: 'title',
        content: 'content',
        startHour: 17,
        startMinute: 00,
        endHour: 18,
        endMinute: 00,
      ),
      TodoEntity(
        date: DateTime.utc(2024, 5, 5),
        title: 'title',
        content: 'content',
        startHour: 18,
        startMinute: 00,
        endHour: 19,
        endMinute: 00,
      ),
      TodoEntity(
        date: DateTime.utc(2024, 5, 5),
        title: 'title',
        content: 'content',
        startHour: 10,
        startMinute: 00,
        endHour: 11,
        endMinute: 00,
      ),
    ],
    DateTime.utc(2024, 5, 6) : [
      TodoEntity(
        date: DateTime.utc(2024, 5, 6),
        title: 'title',
        content: 'content',
        startHour: 02,
        startMinute: 30,
        endHour: 03,
        endMinute: 00,
      ),
      TodoEntity(
        date: DateTime.utc(2024, 5, 6),
        title: 'title',
        content: 'content',
        startHour: 07,
        startMinute: 15,
        endHour: 07,
        endMinute: 25,
      ),
      TodoEntity(
        date: DateTime.utc(2024, 5, 6),
        title: 'title',
        content: 'content',
        startHour: 17,
        startMinute: 30,
        endHour: 18,
        endMinute: 00,
      ),
      TodoEntity(
        date: DateTime.utc(2024, 5, 6),
        title: 'title',
        content: 'content',
        startHour: 22,
        startMinute: 00,
        endHour: 23,
        endMinute: 00,
      ),
    ],
  };

  final todoList2 = TodoListEntity(
    todos: todos2,
  );
  box.put('202405', todoList2);

  Map<DateTime, List<TodoEntity>> todos3 = {
    DateTime.utc(2024, 6, 2) : [
      TodoEntity(
        date: DateTime.utc(2024, 6, 2),
        title: 'title',
        content: 'content',
        startHour: 13,
        startMinute: 00,
        endHour: 14,
        endMinute: 00,
      ),
    ],
  };

  final todoList3 = TodoListEntity(
    todos: todos3,
  );
  box.put('202406', todoList3);
}
