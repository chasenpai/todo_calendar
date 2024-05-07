import 'package:injectable/injectable.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/repository/todo_repository.dart';

@singleton
class TodoUseCase {

  final TodoRepository _todoRepository;
  TodoUseCase(this._todoRepository);

  Future<Map<DateTime, List<Todo>>> getTodos(DateTime day) async {

    Map<DateTime, List<Todo>> todos = {};

    String thisMonth = day.year.toString() + day.month.toString().padLeft(2, '0');
    String lastMonth = day.year.toString() + (day.month - 1).toString().padLeft(2, '0');
    String nextMonth = day.year.toString() + (day.month + 1).toString().padLeft(2, '0');

    if(day.month == 1) {
      lastMonth = '${day.year - 1}12';
    }
    if(day.month == 12) {
      nextMonth = '${day.year + 1}01';
    }

    final thisMonthTodos = await _todoRepository.findAllByDay(thisMonth);
    final lastMonthTodos = await _todoRepository.findAllByDay(lastMonth);
    final nextMonthTodos = await _todoRepository.findAllByDay(nextMonth);
    todos.addAll(thisMonthTodos.todos);
    todos.addAll(lastMonthTodos.todos);
    todos.addAll(nextMonthTodos.todos);
    return todos;
  }

  Future<void> writeTodo(Todo todo) async {
    String month = concatMonthStr(todo.date);
    await _todoRepository.save(month, todo);
  }

  Future<void> editTodo(Todo todo) async {
    String month = concatMonthStr(todo.date);
    await _todoRepository.update(month, todo);
  }

  Future<void> deleteTodo(Todo todo) async {
    String month = concatMonthStr(todo.date);
    await _todoRepository.delete(month, todo.id, todo.date);
  }

  String concatMonthStr(DateTime day) {
    return day.year.toString() + day.month.toString().padLeft(2, '0');
  }
}