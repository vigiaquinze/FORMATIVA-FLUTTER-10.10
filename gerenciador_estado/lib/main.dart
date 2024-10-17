import 'package:flutter/material.dart';
import 'package:gerenciador_estado/todo_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TodoHomePage(), // Página inicial do app
    );
  }
}
