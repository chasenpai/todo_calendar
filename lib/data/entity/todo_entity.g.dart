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
      id: fields[0] as String,
      date: fields[1] as DateTime,
      title: fields[2] as String,
      content: fields[3] as String,
      startHour: fields[4] as int,
      startMinute: fields[5] as int,
      endHour: fields[6] as int,
      endMinute: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TodoEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.content)
      ..writeByte(4)
      ..write(obj.startHour)
      ..writeByte(5)
      ..write(obj.startMinute)
      ..writeByte(6)
      ..write(obj.endHour)
      ..writeByte(7)
      ..write(obj.endMinute);
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
