import 'package:go_router/go_router.dart';
import 'package:todo_calendar/presentation/calendar/calendar_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CalendarScreen(),
    ),
  ],
);