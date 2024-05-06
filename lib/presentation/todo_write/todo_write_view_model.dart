import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/use_case/todo_use_case.dart';
import 'package:todo_calendar/presentation/todo_write/todo_write_state.dart';
import 'package:uuid/uuid.dart';

@injectable
class TodoWriteViewModel with ChangeNotifier {
  final TodoUseCase _todoUseCase;
  var _state = const TodoWriteState();

  TodoWriteState get state => _state;

  TodoWriteViewModel(this._todoUseCase);

  void onDateFocus() {
    _state = _state.copyWith(
      isDateFocus: true,
    );
    notifyListeners();
  }

  void unDateFocus() {
    _state = _state.copyWith(
      isDateFocus: false,
    );
    notifyListeners();
  }

  void onStartTimeFocus() {
    _state = _state.copyWith(
      isStartTimeFocus: true,
    );
    notifyListeners();
  }

  void unStartTimeFocus() {
    _state = _state.copyWith(
      isStartTimeFocus: false,
    );
    notifyListeners();
  }

  void onEndTimeFocus() {
    _state = _state.copyWith(
      isEndTimeFocus: true,
    );
    notifyListeners();
  }

  void unEndTimeFocus() {
    _state = _state.copyWith(
      isEndTimeFocus: false,
    );
    notifyListeners();
  }

  Future<void> saveTodo({
    required DateTime date,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
    required String title,
    required String content,
  }) async {
    const uuid = Uuid();
    final id = uuid.v1();
    final todo = Todo(
      id: id,
      date: date,
      title: title,
      content: content,
      startHour: startTime.hour,
      startMinute: startTime.minute,
      endHour: endTime.hour,
      endMinute: endTime.minute,
    );
    await _todoUseCase.saveTodo(todo);
  }
}
