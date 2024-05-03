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

TodoList _$TodoListFromJson(Map<String, dynamic> json) {
  return _TodoList.fromJson(json);
}

/// @nodoc
mixin _$TodoList {
  Map<DateTime, List<Todo>> get todos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
@JsonSerializable()
class _$TodoListImpl implements _TodoList {
  const _$TodoListImpl({required final Map<DateTime, List<Todo>> todos})
      : _todos = todos;

  factory _$TodoListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoListImplFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListImplCopyWith<_$TodoListImpl> get copyWith =>
      __$$TodoListImplCopyWithImpl<_$TodoListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoListImplToJson(
      this,
    );
  }
}

abstract class _TodoList implements TodoList {
  const factory _TodoList({required final Map<DateTime, List<Todo>> todos}) =
      _$TodoListImpl;

  factory _TodoList.fromJson(Map<String, dynamic> json) =
      _$TodoListImpl.fromJson;

  @override
  Map<DateTime, List<Todo>> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodoListImplCopyWith<_$TodoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  DateTime get date => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call({DateTime date, String content, int startTime, int endTime});
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
    Object? date = null,
    Object? content = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
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
  $Res call({DateTime date, String content, int startTime, int endTime});
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
    Object? date = null,
    Object? content = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$TodoImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl implements _Todo {
  const _$TodoImpl(
      {required this.date,
      required this.content,
      required this.startTime,
      required this.endTime});

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String content;
  @override
  final int startTime;
  @override
  final int endTime;

  @override
  String toString() {
    return 'Todo(date: $date, content: $content, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, content, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoImplToJson(
      this,
    );
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {required final DateTime date,
      required final String content,
      required final int startTime,
      required final int endTime}) = _$TodoImpl;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get content;
  @override
  int get startTime;
  @override
  int get endTime;
  @override
  @JsonKey(ignore: true)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
