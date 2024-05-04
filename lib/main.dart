import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_calendar/config/router.dart';
import 'package:todo_calendar/data/entity/todo_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_view_model.dart';
import 'package:todo_calendar/util/theme.dart';

import 'config/di_setup.dart';

void main() async {

  configureDependencies();
  await Hive.initFlutter();
  Hive.registerAdapter<TodoListEntity>(TodoListEntityAdapter());
  Hive.registerAdapter<TodoEntity>(TodoEntityAdapter());
  await Hive.openBox<TodoListEntity>('todo.db');

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