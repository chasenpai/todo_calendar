import 'package:todo_calendar/data/entity/todo_entity.dart';
import 'package:todo_calendar/domain/model/todo.dart';

extension TodoListEntityToModel on TodoListEntity {
  TodoList toModel() {
    final mappedTodos = todos.map((date, todoList) {
      final mappedTodo = todoList.map((todo) => todo.toModel()).toList();
      return MapEntry(date, mappedTodo);
    });
    return TodoList(todos: mappedTodos);
  }
}

extension TodoEntityToModel on TodoEntity {
  Todo toModel() {
    return Todo(
      date: date,
      title: title,
      content: content,
      startHour: startHour,
      startMinute: startMinute,
      endHour: endHour,
      endMinute: endMinute,
    );
  }
}
