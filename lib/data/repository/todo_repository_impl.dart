import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_calendar/data/entity/todo_entity.dart';
import 'package:todo_calendar/data/mapper/todo_mapper.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/repository/todo_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {

  @override
  Future<TodoList> findAllByDay(String day) async {
    final box = Hive.box<TodoListEntity>('todo.db');
    final TodoListEntity? todoList = box.get(day);
    return todoList != null ? todoList.toModel() : const TodoList(todos: {},);
  }
}