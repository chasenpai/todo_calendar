import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_write_state.freezed.dart';

@freezed
class TodoWriteState with _$TodoWriteState {
  const factory TodoWriteState({
    @Default(false) bool isDateFocus,
    @Default(false) bool isStartTimeFocus,
    @Default(false) bool isEndTimeFocus,
  }) = _TodoWriteState;
}
