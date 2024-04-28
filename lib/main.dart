import 'package:flutter/material.dart';
import 'package:todo_calendar/config/router.dart';
import 'package:todo_calendar/presentation/home_screen.dart';
import 'package:todo_calendar/util/color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: dartColorScheme,
        useMaterial3: true,
      ),
    );
  }
}