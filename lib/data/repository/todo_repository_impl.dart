import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_calendar/data/entity/todo_entity.dart';
import 'package:todo_calendar/data/mapper/todo_mapper.dart';
import 'package:todo_calendar/domain/model/todo.dart';
import 'package:todo_calendar/domain/repository/todo_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {

  @override
  Future<TodoList> findAllByDay(String month) async {
    final box = Hive.box<TodoListEntity>('todo.db');
    final TodoListEntity? todoList = box.get(month);
    return todoList != null ? todoList.toModel() : const TodoList(todos: {},);
  }

  @override
  Future<void> save(String month, Todo model) async {
    final todo = model.toEntity();
    final box = Hive.box<TodoListEntity>('todo.db');
    final TodoListEntity? todoList = box.get(month);
    if(todoList == null) {
      box.put(month, TodoListEntity(todos: {todo.date : [todo]},),);
    }else {
      final Map<DateTime, List<TodoEntity>> todos = todoList.todos;
      final List<TodoEntity>? todosByDate = todos[todo.date];
      if(todosByDate == null) {
        todos.addAll({
          todo.date : [todo],
        });
      }else {
        todosByDate.add(todo);
      }
      todoList.todos.addAll(todos);
      box.put(month, todoList);
    }
  }

  @override
  Future<void> update(String month, Todo model) async {
    final box = Hive.box<TodoListEntity>('todo.db');
    final TodoListEntity? todoList = box.get(month);
    final Map<DateTime, List<TodoEntity>> todos = todoList!.todos;
    final List<TodoEntity>? todosByDate = todos[model.date];
    for (var todo in todosByDate!) {
      if(todo.id == model.id) {
        todo.title = model.title;
        todo.content = model.content;
        todo.date = model.date;
        todo.startHour = model.startHour;
        todo.startMinute = model.startMinute;
        todo.endHour = model.endHour;
        todo.endMinute = model.endMinute;
        todo.isCheck = model.isCheck;
      }
      todoList.todos.addAll(todos);
      box.put(month, todoList);
    }}

  @override
  Future<void> delete(String month, String id, DateTime date) async {
    final box = Hive.box<TodoListEntity>('todo.db');
    final TodoListEntity? todoList = box.get(month);
    final Map<DateTime, List<TodoEntity>> todos = todoList!.todos;
    final List<TodoEntity>? todosByDate = todos[date];
    todosByDate!.removeWhere((todo) => todo.id == id);
    todoList.todos.addAll(todos);
    box.put(month, todoList);
  }
}