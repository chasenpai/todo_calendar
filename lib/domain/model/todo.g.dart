// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListImpl _$$TodoListImplFromJson(Map<String, dynamic> json) =>
    _$TodoListImpl(
      todos: (json['todos'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            DateTime.parse(k),
            (e as List<dynamic>)
                .map((e) => Todo.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$TodoListImplToJson(_$TodoListImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      date: DateTime.parse(json['date'] as String),
      content: json['content'] as String,
      startTime: (json['startTime'] as num).toInt(),
      endTime: (json['endTime'] as num).toInt(),
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'content': instance.content,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
