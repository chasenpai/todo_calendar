import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/domain/model/todo.dart';

part 'todo_list_state.freezed.dart';

@freezed
class TodoListState with _$TodoListState{
  const factory TodoListState({
    required DateTime selectedDay,
    required DateTime focusedDay,
    required CalendarFormat format,
    required Map<DateTime, List<Todo>> todos,
  }) = _TodoListState;

  static TodoListState init() {
    final day = DateTime.utc(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    );
    return TodoListState(
      selectedDay: day,
      focusedDay: day,
      format: CalendarFormat.month,
      todos: {},
    );
  }
}