import 'package:flutter/material.dart';

import 'todo_list/todo_list.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ToDoList(),
      );
}
