import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_view_model.dart';
import 'package:provider/provider.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TodoListViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  borderRadius: BorderRadius.circular(16.0),
                ),
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
                    context.read<TodoListViewModel>().changeFormat(
                      format: format,
                    );
                  },
                  headerStyle: HeaderStyle(
                    headerMargin: const EdgeInsets.only(bottom: 15.0),
                    decoration: BoxDecoration(
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
                    formatButtonDecoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                      color: Colors.white,
                    ),
                    formatButtonTextStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    isTodayHighlighted: false,
                    defaultDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    weekendDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    selectedTextStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    outsideDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    markerDecoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                  selectedDayPredicate: (day) {
                    return isSameDay(state.selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    context.read<TodoListViewModel>().changeDay(
                      selectedDay: selectedDay,
                      focusedDay: focusedDay,
                    );
                  },
                  onPageChanged: (focusedDay) {
                    context.read<TodoListViewModel>().changePage(
                      focusedDay: focusedDay,
                    );
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
                        color: Colors.red,
                      ),
                      onDismissed: (direction) async {
                        await viewModel.deleteTodo(todo: todo);
                        viewModel.build();
                      },
                      child: GestureDetector(
                        onTap: () async {
                          final uri = Uri(
                            path: '/edit',
                            queryParameters: {'todo': jsonEncode(todo.toJson()),},
                          );
                          bool? isSaved = await context.push(uri.toString());
                          if(isSaved != null && isSaved) {
                            viewModel.build();
                          }
                        },
                        child: ListTile(
                          tileColor: Theme.of(context).colorScheme.onInverseSurface,
                          title: Text(
                            todo.id,
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
            viewModel.build();
          }
        },
        child: const Icon(Icons.add,),
      ),
    );
  }
}
