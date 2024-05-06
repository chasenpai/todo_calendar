import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_screen.dart';
import 'package:todo_calendar/presentation/todo_list/todo_list_view_model.dart';
import 'package:todo_calendar/presentation/todo_write/todo_write_screen.dart';
import 'package:todo_calendar/presentation/todo_write/todo_write_view_model.dart';
import 'package:todo_calendar/util/convert.dart';

import 'di_setup.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) {
          return getIt.get<TodoListViewModel>();
        },
        child: const TodoListScreen()
      ),
    ),
    GoRoute(
      path: '/write',
      builder: (context, state) {
        return ChangeNotifierProvider(
        create: (_) {
          return getIt.get<TodoWriteViewModel>();
        },
        child: TodoWriteScreen(
          selectedDay: Convert.strToDateTime(state.uri.queryParameters['selectedDay']!),
        ),
      );
      },
    ),
  ],
);