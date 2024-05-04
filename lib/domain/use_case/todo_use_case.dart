import 'package:injectable/injectable.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/repository/todo_repository.dart';

@singleton
class TodoUseCase {

  final TodoRepository todoRepository;
  TodoUseCase(this.todoRepository);

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

    final thisMonthTodos = await todoRepository.findAllByDay(thisMonth);
    final lastMonthTodos = await todoRepository.findAllByDay(lastMonth);
    final nextMonthTodos = await todoRepository.findAllByDay(nextMonth);
    todos.addAll(thisMonthTodos.todos);
    todos.addAll(lastMonthTodos.todos);
    todos.addAll(nextMonthTodos.todos);

    return todos;
  }
}