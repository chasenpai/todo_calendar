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

    final thisMonthTodoList = await _todoRepository.findAllByDay(thisMonth);
    final lastMonthTodoList = await _todoRepository.findAllByDay(lastMonth);
    final nextMonthTodoList = await _todoRepository.findAllByDay(nextMonth);

    _sortingTodo(thisMonthTodoList.todos);
    _sortingTodo(lastMonthTodoList.todos);
    _sortingTodo(nextMonthTodoList.todos);

    todos.addAll(thisMonthTodoList.todos);
    todos.addAll(lastMonthTodoList.todos);
    todos.addAll(nextMonthTodoList.todos);
    return todos;
  }

  void _sortingTodo(Map<DateTime, List<Todo>> todos) {
    todos.forEach((date, todoList) {
      todoList.sort((a, b) {
        int compareStartHour = a.startHour.compareTo(b.startHour);
        if (compareStartHour == 0) {
          int compareStartMinute = a.startMinute.compareTo(b.startMinute);
          if (compareStartMinute == 0) {
            int compareEndHour = a.endHour.compareTo(b.endHour);
            if (compareEndHour == 0) {
              return a.endMinute.compareTo(b.endMinute);
            }
            return compareEndHour;
          }
          return compareStartMinute;
        }
        return compareStartHour;
      });
    });
  }

  Future<void> writeTodo(Todo todo) async {
    String month = _concatMonthStr(todo.date);
    await _todoRepository.save(month, todo);
  }

  Future<void> editTodo(Todo todo) async {
    String month = _concatMonthStr(todo.date);
    await _todoRepository.update(month, todo);
  }

  Future<void> deleteTodo(Todo todo) async {
    String month = _concatMonthStr(todo.date);
    await _todoRepository.delete(month, todo.id, todo.date);
  }

  String _concatMonthStr(DateTime day) {
    return day.year.toString() + day.month.toString().padLeft(2, '0');
  }
}