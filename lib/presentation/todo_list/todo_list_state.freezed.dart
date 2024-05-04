// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoListState {
  DateTime get selectedDay => throw _privateConstructorUsedError;
  DateTime get focusedDay => throw _privateConstructorUsedError;
  CalendarFormat get format => throw _privateConstructorUsedError;
  Map<DateTime, List<Todo>> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res, TodoListState>;
  @useResult
  $Res call(
      {DateTime selectedDay,
      DateTime focusedDay,
      CalendarFormat format,
      Map<DateTime, List<Todo>> todos});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res, $Val extends TodoListState>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
    Object? focusedDay = null,
    Object? format = null,
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Todo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListStateImplCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$TodoListStateImplCopyWith(
          _$TodoListStateImpl value, $Res Function(_$TodoListStateImpl) then) =
      __$$TodoListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime selectedDay,
      DateTime focusedDay,
      CalendarFormat format,
      Map<DateTime, List<Todo>> todos});
}

/// @nodoc
class __$$TodoListStateImplCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$TodoListStateImpl>
    implements _$$TodoListStateImplCopyWith<$Res> {
  __$$TodoListStateImplCopyWithImpl(
      _$TodoListStateImpl _value, $Res Function(_$TodoListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDay = null,
    Object? focusedDay = null,
    Object? format = null,
    Object? todos = null,
  }) {
    return _then(_$TodoListStateImpl(
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CalendarFormat,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Todo>>,
    ));
  }
}

/// @nodoc

class _$TodoListStateImpl implements _TodoListState {
  const _$TodoListStateImpl(
      {required this.selectedDay,
      required this.focusedDay,
      required this.format,
      required final Map<DateTime, List<Todo>> todos})
      : _todos = todos;

  @override
  final DateTime selectedDay;
  @override
  final DateTime focusedDay;
  @override
  final CalendarFormat format;
  final Map<DateTime, List<Todo>> _todos;
  @override
  Map<DateTime, List<Todo>> get todos {
    if (_todos is EqualUnmodifiableMapView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_todos);
  }

  @override
  String toString() {
    return 'TodoListState(selectedDay: $selectedDay, focusedDay: $focusedDay, format: $format, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListStateImpl &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDay, focusedDay, format,
      const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListStateImplCopyWith<_$TodoListStateImpl> get copyWith =>
      __$$TodoListStateImplCopyWithImpl<_$TodoListStateImpl>(this, _$identity);
}

abstract class _TodoListState implements TodoListState {
  const factory _TodoListState(
      {required final DateTime selectedDay,
      required final DateTime focusedDay,
      required final CalendarFormat format,
      required final Map<DateTime, List<Todo>> todos}) = _$TodoListStateImpl;

  @override
  DateTime get selectedDay;
  @override
  DateTime get focusedDay;
  @override
  CalendarFormat get format;
  @override
  Map<DateTime, List<Todo>> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodoListStateImplCopyWith<_$TodoListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
