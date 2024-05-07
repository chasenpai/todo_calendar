import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_event.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_view_model.dart';
import 'package:provider/provider.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TodoListViewModel>();
    final state = viewModel.state;

    final baseBoxDeco = BoxDecoration(
      color: Theme.of(context).colorScheme.onInverseSurface,
      borderRadius: BorderRadius.circular(16.0),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,),
          child: Column(
            children: [
              Container(
                decoration: baseBoxDeco,
                child: TableCalendar(
                  focusedDay: state.focusedDay,
                  firstDay: DateTime(1800),
                  lastDay: DateTime(3000),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'month',
                    CalendarFormat.week: 'week',
                  },
                  calendarFormat: state.format,
                  onFormatChanged: (format) {
                    viewModel.onEvent(TodoListEvent.changeFormat(format: format));
                  },
                  headerStyle: HeaderStyle(
                    headerMargin: const EdgeInsets.only(bottom: 15.0),
                    decoration: baseBoxDeco.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    titleTextStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                    formatButtonDecoration: baseBoxDeco.copyWith(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    formatButtonTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: false,
                    defaultDecoration: baseBoxDeco,
                    weekendDecoration: baseBoxDeco,
                    selectedDecoration: baseBoxDeco.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    selectedTextStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    outsideDecoration: baseBoxDeco,
                    markerDecoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  selectedDayPredicate: (day) {
                    return isSameDay(state.selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    viewModel.onEvent(TodoListEvent.changeDay(
                      selectedDay: selectedDay,
                      focusedDay: focusedDay,
                    ));
                  },
                  onPageChanged: (focusedDay) {
                    viewModel.onEvent(TodoListEvent.changePage(focusedDay: focusedDay));
                  },
                  eventLoader: (day) {
                    return state.todos[day] ?? [];
                  },
                ),
              ),
              const SizedBox(height: 12.0,),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final todo = context.read<TodoListViewModel>().getTodosForDay()[index];
                    return Dismissible(
                      key: ObjectKey(todo.id),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        decoration: baseBoxDeco.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20.0,),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      onDismissed: (direction) {
                        viewModel.onEvent(TodoListEvent.deleteTodo(todo: todo));
                        final restoreSnackBar = SnackBar(
                          duration: const Duration(seconds: 3),
                          content: const Text('todo has been deleted',
                          ),
                          action: SnackBarAction(
                            label: 'restore',
                            onPressed: () {
                              viewModel.onEvent(const TodoListEvent.restoreTodo());
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(restoreSnackBar);
                      },
                      child: GestureDetector(
                        onTap: () async {
                          final uri = Uri(
                            path: '/edit',
                            queryParameters: {'todo': jsonEncode(todo.toJson()),},
                          );
                          bool? isSaved = await context.push(uri.toString());
                          if(isSaved != null && isSaved) {
                            viewModel.onEvent(const TodoListEvent.loadTodos());
                          }
                        },
                        child: Container(
                          decoration: baseBoxDeco,
                          child: ListTile(
                            title: Text(
                              todo.title,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            subtitle: Text(
                              '${todo.startHour.toString().padLeft(2, '0')}:${todo.startMinute.toString().padLeft(2, '0')}'
                              ' ~ ${todo.endHour.toString().padLeft(2, '0')}:${todo.endMinute.toString().padLeft(2, '0')}',
                            ),
                            leading: IconButton(
                              icon: const Icon(
                                Icons.check,
                              ),
                              onPressed: () {
                                viewModel.onEvent(TodoListEvent.checkTodo(todo: todo));
                              },
                              color: todo.isCheck ? Theme.of(context).colorScheme.primary : Colors.white,
                              iconSize: 28.0,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 12.0,);
                  },
                  itemCount: context.read<TodoListViewModel>().getTodosForDay().length,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () async {
          final uri = Uri(
            path: '/write',
            queryParameters: {'selectedDay': state.selectedDay.toString()},
          );
          bool? isSaved = await context.push(uri.toString());
          if(isSaved != null && isSaved) {
            viewModel.onEvent(const TodoListEvent.loadTodos());
          }
        },
        child: const Icon(Icons.add,),
      ),
    );
  }
}

class _Calendar extends StatelessWidget {
  const _Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _TodoList extends StatelessWidget {
  const _TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


