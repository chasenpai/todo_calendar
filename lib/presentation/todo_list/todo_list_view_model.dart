import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/use_case/todo_use_case.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_state.dart';

@injectable
class TodoListViewModel with ChangeNotifier {
  final TodoUseCase _todoUseCase;
  var _state = TodoListState.init();
  TodoListState get state => _state;

  TodoListViewModel(this._todoUseCase) {
    build();
  }

  Future<void> build() async {
    final day = DateTime.now();
    final todos = await _getTodos(day);
    _state = state.copyWith(
      todos: todos,
    );
    notifyListeners();
  }

  void changeFormat({required CalendarFormat format}) {
    _state = state.copyWith(
      format: format,
    );
    notifyListeners();
  }

  void changeDay({
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

  void changePage({
    required DateTime focusedDay,
  }) async {
    final todos = await _getTodos(focusedDay);
    _state = state.copyWith(
      focusedDay: focusedDay,
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

  Future<void> deleteTodo({required Todo todo}) async {
    await _todoUseCase.deleteTodo(todo);
  }

  Future<void> checkTodo({required Todo todo}) async {
    todo = todo.copyWith(
      isCheck: !todo.isCheck,
    );
    await _todoUseCase.editTodo(todo);
  }
}
