import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    required DateTime selectedDay,
    required DateTime focusedDay,
    required CalendarFormat format,
  }) = _CalendarState;
}