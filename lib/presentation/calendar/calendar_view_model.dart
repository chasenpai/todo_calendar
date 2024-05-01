import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo_calendar/presentation/calendar/calendar_state.dart';

part 'calendar_view_model.g.dart';

@riverpod
class CalendarViewModel extends _$CalendarViewModel {
  @override
  CalendarState build() {
    return CalendarState(
      selectedDay: DateTime.utc(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
      ),
      focusedDay: DateTime.now(),
      format: CalendarFormat.month,
    );
  }

  void changeFormat({required CalendarFormat format}) {
    state = state.copyWith(
      format: format,
    );
  }

  void changeDay({
    required DateTime selectedDay,
    required DateTime focusedDay,
  }) {
    state = state.copyWith(
      selectedDay: selectedDay,
      focusedDay: focusedDay,
    );
  }
}