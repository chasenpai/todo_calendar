import 'package:todo_calendar/domain/model/todo.dart';

abstract interface class TodoRepository {
  Future<TodoList> findAllByDay(String month);
  Future<void> save(String month, Todo model);
}