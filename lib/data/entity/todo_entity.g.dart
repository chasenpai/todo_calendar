// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoListEntityAdapter extends TypeAdapter<TodoListEntity> {
  @override
  final int typeId = 0;

  @override
  TodoListEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoListEntity(
      todos: (fields[0] as Map).map((dynamic k, dynamic v) =>
          MapEntry(k as DateTime, (v as List).cast<TodoEntity>())),
    );
  }

  @override
  void write(BinaryWriter writer, TodoListEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.todos);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoListEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TodoEntityAdapter extends TypeAdapter<TodoEntity> {
  @override
  final int typeId = 1;

  @override
  TodoEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoEntity(
      date: fields[0] as DateTime,
      content: fields[1] as String,
      startTime: fields[2] as int,
      endTime: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TodoEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.startTime)
      ..writeByte(3)
      ..write(obj.endTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
