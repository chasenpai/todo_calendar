import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/use_case/todo_use_case.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_event.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_state.dart';

@injectable
class TodoListViewModel with ChangeNotifier {
  final TodoUseCase _todoUseCase;
  var _state = TodoListState.init();

  TodoListState get state => _state;

  TodoListViewModel(this._todoUseCase) {
    _loadTodos();
  }

  Future<void> _loadTodos() async {
    final day = DateTime.now();
    final todos = await _getTodos(day);
    _state = state.copyWith(
      todos: todos,
    );
    notifyListeners();
  }

  Future<Map<DateTime, List<Todo>>> _getTodos(DateTime focusedDay) async {
    return _todoUseCase.getTodos(focusedDay);
  }

  List<Todo> getTodosForDay() {
    return state.todos[state.selectedDay] ?? [];
  }

  void onEvent(TodoListEvent event) {
    event.when(
      loadTodos: _loadTodos,
      changeFormat: (format) => _changeFormat(
        format: format,
      ),
      changeDay: (selectedDay, focusedDay) => _changeDay(
        selectedDay: selectedDay,
        focusedDay: focusedDay,
      ),
      changePage: (focusedDay) => _changePage(
        focusedDay: focusedDay,
      ),
      deleteTodo: (todo) => _deleteTodo(
        todo: todo,
      ),
      checkTodo: (todo) => _checkTodo(todo: todo),
    );
  }

  void _changeFormat({required CalendarFormat format}) {
    _state = state.copyWith(
      format: format,
    );
    notifyListeners();
  }

  void _changeDay({
    required DateTime selectedDay,
    required DateTime focusedDay,
  }) async {
    final todos = await _getTodos(focusedDay);
    _state = state.copyWith(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
      todos: todos,
    );
    notifyListeners();
  }

  void _changePage({
    required DateTime focusedDay,
  }) async {
    final todos = await _getTodos(focusedDay);
    _state = state.copyWith(
      focusedDay: focusedDay,
      todos: todos,
    );
    notifyListeners();
  }

  Future<void> _deleteTodo({required Todo todo}) async {
    await _todoUseCase.deleteTodo(todo);
    await _loadTodos();
  }

  Future<void> _checkTodo({required Todo todo}) async {
    todo = todo.copyWith(
      isCheck: !todo.isCheck,
    );
    await _todoUseCase.editTodo(todo);
    await _loadTodos();
  }
}
