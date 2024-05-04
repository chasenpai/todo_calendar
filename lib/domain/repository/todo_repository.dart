import 'package:todo_calendar/domain/model/todo.dart';

abstract interface class TodoRepository {
  Future<TodoList> findAllByDay(String day);
}