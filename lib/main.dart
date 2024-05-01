import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_calendar/config/router.dart';
import 'package:todo_calendar/util/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = MaterialTheme(TextTheme());
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: theme.light(),
      darkTheme: theme.dark(),
    );
  }
}