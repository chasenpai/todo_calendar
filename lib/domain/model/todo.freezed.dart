// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoList {
  Map<DateTime, List<Todo>> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListCopyWith<TodoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListCopyWith<$Res> {
  factory $TodoListCopyWith(TodoList value, $Res Function(TodoList) then) =
      _$TodoListCopyWithImpl<$Res, TodoList>;
  @useResult
  $Res call({Map<DateTime, List<Todo>> todos});
}

/// @nodoc
class _$TodoListCopyWithImpl<$Res, $Val extends TodoList>
    implements $TodoListCopyWith<$Res> {
  _$TodoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Todo>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListImplCopyWith<$Res>
    implements $TodoListCopyWith<$Res> {
  factory _$$TodoListImplCopyWith(
          _$TodoListImpl value, $Res Function(_$TodoListImpl) then) =
      __$$TodoListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<DateTime, List<Todo>> todos});
}

/// @nodoc
class __$$TodoListImplCopyWithImpl<$Res>
    extends _$TodoListCopyWithImpl<$Res, _$TodoListImpl>
    implements _$$TodoListImplCopyWith<$Res> {
  __$$TodoListImplCopyWithImpl(
      _$TodoListImpl _value, $Res Function(_$TodoListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodoListImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, List<Todo>>,
    ));
  }
}

/// @nodoc

class _$TodoListImpl implements _TodoList {
  const _$TodoListImpl({required final Map<DateTime, List<Todo>> todos})
      : _todos = todos;

  final Map<DateTime, List<Todo>> _todos;
  @override
  Map<DateTime, List<Todo>> get todos {
    if (_todos is EqualUnmodifiableMapView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_todos);
  }

  @override
  String toString() {
    return 'TodoList(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListImplCopyWith<_$TodoListImpl> get copyWith =>
      __$$TodoListImplCopyWithImpl<_$TodoListImpl>(this, _$identity);
}

abstract class _TodoList implements TodoList {
  const factory _TodoList({required final Map<DateTime, List<Todo>> todos}) =
      _$TodoListImpl;

  @override
  Map<DateTime, List<Todo>> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodoListImplCopyWith<_$TodoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Todo {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get startHour => throw _privateConstructorUsedError;
  int get startMinute => throw _privateConstructorUsedError;
  int get endHour => throw _privateConstructorUsedError;
  int get endMinute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String title,
      String content,
      int startHour,
      int startMinute,
      int endHour,
      int endMinute});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? startHour = null,
    Object? startMinute = null,
    Object? endHour = null,
    Object? endMinute = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startHour: null == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int,
      startMinute: null == startMinute
          ? _value.startMinute
          : startMinute // ignore: cast_nullable_to_non_nullable
              as int,
      endHour: null == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int,
      endMinute: null == endMinute
          ? _value.endMinute
          : endMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoImplCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$TodoImplCopyWith(
          _$TodoImpl value, $Res Function(_$TodoImpl) then) =
      __$$TodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String title,
      String content,
      int startHour,
      int startMinute,
      int endHour,
      int endMinute});
}

/// @nodoc
class __$$TodoImplCopyWithImpl<$Res>
    extends _$TodoCopyWithImpl<$Res, _$TodoImpl>
    implements _$$TodoImplCopyWith<$Res> {
  __$$TodoImplCopyWithImpl(_$TodoImpl _value, $Res Function(_$TodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? startHour = null,
    Object? startMinute = null,
    Object? endHour = null,
    Object? endMinute = null,
  }) {
    return _then(_$TodoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startHour: null == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int,
      startMinute: null == startMinute
          ? _value.startMinute
          : startMinute // ignore: cast_nullable_to_non_nullable
              as int,
      endHour: null == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int,
      endMinute: null == endMinute
          ? _value.endMinute
          : endMinute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TodoImpl implements _Todo {
  const _$TodoImpl(
      {required this.id,
      required this.date,
      required this.title,
      required this.content,
      required this.startHour,
      required this.startMinute,
      required this.endHour,
      required this.endMinute});

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String title;
  @override
  final String content;
  @override
  final int startHour;
  @override
  final int startMinute;
  @override
  final int endHour;
  @override
  final int endMinute;

  @override
  String toString() {
    return 'Todo(id: $id, date: $date, title: $title, content: $content, startHour: $startHour, startMinute: $startMinute, endHour: $endHour, endMinute: $endMinute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.startHour, startHour) ||
                other.startHour == startHour) &&
            (identical(other.startMinute, startMinute) ||
                other.startMinute == startMinute) &&
            (identical(other.endHour, endHour) || other.endHour == endHour) &&
            (identical(other.endMinute, endMinute) ||
                other.endMinute == endMinute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date, title, content,
      startHour, startMinute, endHour, endMinute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {required final String id,
      required final DateTime date,
      required final String title,
      required final String content,
      required final int startHour,
      required final int startMinute,
      required final int endHour,
      required final int endMinute}) = _$TodoImpl;

  @override
  String get id;
  @override
  DateTime get date;
  @override
  String get title;
  @override
  String get content;
  @override
  int get startHour;
  @override
  int get startMinute;
  @override
  int get endHour;
  @override
  int get endMinute;
  @override
  @JsonKey(ignore: true)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
