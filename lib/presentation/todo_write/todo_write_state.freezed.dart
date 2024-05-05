// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_write_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoWriteState {
  bool get isDateFocus => throw _privateConstructorUsedError;
  bool get isStartTimeFocus => throw _privateConstructorUsedError;
  bool get isEndTimeFocus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoWriteStateCopyWith<TodoWriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoWriteStateCopyWith<$Res> {
  factory $TodoWriteStateCopyWith(
          TodoWriteState value, $Res Function(TodoWriteState) then) =
      _$TodoWriteStateCopyWithImpl<$Res, TodoWriteState>;
  @useResult
  $Res call({bool isDateFocus, bool isStartTimeFocus, bool isEndTimeFocus});
}

/// @nodoc
class _$TodoWriteStateCopyWithImpl<$Res, $Val extends TodoWriteState>
    implements $TodoWriteStateCopyWith<$Res> {
  _$TodoWriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDateFocus = null,
    Object? isStartTimeFocus = null,
    Object? isEndTimeFocus = null,
  }) {
    return _then(_value.copyWith(
      isDateFocus: null == isDateFocus
          ? _value.isDateFocus
          : isDateFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isStartTimeFocus: null == isStartTimeFocus
          ? _value.isStartTimeFocus
          : isStartTimeFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndTimeFocus: null == isEndTimeFocus
          ? _value.isEndTimeFocus
          : isEndTimeFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoWriteStateImplCopyWith<$Res>
    implements $TodoWriteStateCopyWith<$Res> {
  factory _$$TodoWriteStateImplCopyWith(_$TodoWriteStateImpl value,
          $Res Function(_$TodoWriteStateImpl) then) =
      __$$TodoWriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDateFocus, bool isStartTimeFocus, bool isEndTimeFocus});
}

/// @nodoc
class __$$TodoWriteStateImplCopyWithImpl<$Res>
    extends _$TodoWriteStateCopyWithImpl<$Res, _$TodoWriteStateImpl>
    implements _$$TodoWriteStateImplCopyWith<$Res> {
  __$$TodoWriteStateImplCopyWithImpl(
      _$TodoWriteStateImpl _value, $Res Function(_$TodoWriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDateFocus = null,
    Object? isStartTimeFocus = null,
    Object? isEndTimeFocus = null,
  }) {
    return _then(_$TodoWriteStateImpl(
      isDateFocus: null == isDateFocus
          ? _value.isDateFocus
          : isDateFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isStartTimeFocus: null == isStartTimeFocus
          ? _value.isStartTimeFocus
          : isStartTimeFocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isEndTimeFocus: null == isEndTimeFocus
          ? _value.isEndTimeFocus
          : isEndTimeFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoWriteStateImpl implements _TodoWriteState {
  const _$TodoWriteStateImpl(
      {this.isDateFocus = false,
      this.isStartTimeFocus = false,
      this.isEndTimeFocus = false});

  @override
  @JsonKey()
  final bool isDateFocus;
  @override
  @JsonKey()
  final bool isStartTimeFocus;
  @override
  @JsonKey()
  final bool isEndTimeFocus;

  @override
  String toString() {
    return 'TodoWriteState(isDateFocus: $isDateFocus, isStartTimeFocus: $isStartTimeFocus, isEndTimeFocus: $isEndTimeFocus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoWriteStateImpl &&
            (identical(other.isDateFocus, isDateFocus) ||
                other.isDateFocus == isDateFocus) &&
            (identical(other.isStartTimeFocus, isStartTimeFocus) ||
                other.isStartTimeFocus == isStartTimeFocus) &&
            (identical(other.isEndTimeFocus, isEndTimeFocus) ||
                other.isEndTimeFocus == isEndTimeFocus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isDateFocus, isStartTimeFocus, isEndTimeFocus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoWriteStateImplCopyWith<_$TodoWriteStateImpl> get copyWith =>
      __$$TodoWriteStateImplCopyWithImpl<_$TodoWriteStateImpl>(
          this, _$identity);
}

abstract class _TodoWriteState implements TodoWriteState {
  const factory _TodoWriteState(
      {final bool isDateFocus,
      final bool isStartTimeFocus,
      final bool isEndTimeFocus}) = _$TodoWriteStateImpl;

  @override
  bool get isDateFocus;
  @override
  bool get isStartTimeFocus;
  @override
  bool get isEndTimeFocus;
  @override
  @JsonKey(ignore: true)
  _$$TodoWriteStateImplCopyWith<_$TodoWriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
