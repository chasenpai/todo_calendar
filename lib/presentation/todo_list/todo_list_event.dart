import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/domain/model/todo.dart';

part 'todo_list_event.freezed.dart';

@freezed
sealed class TodoListEvent with _$TodoListEvent{
  const factory TodoListEvent.loadTodos() = LoadTodos;
  const factory TodoListEvent.changeFormat({required CalendarFormat format}) = ChangeFormat;
  const factory TodoListEvent.changeDay({required DateTime selectedDay, required DateTime focusedDay}) = ChangeDay;
  const factory TodoListEvent.changePage({required DateTime focusedDay}) = ChangePage;
  const factory TodoListEvent.deleteTodo({required Todo todo}) = ChangeTodo;
  const factory TodoListEvent.restoreTodo() = RestoreTodo;
  const factory TodoListEvent.checkTodo({required Todo todo}) = CheckTodo;
}