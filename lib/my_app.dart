import 'package:design_ui_instagram/lesson7/pages/direct_message/direct_message_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Direct_Message_Page(),
    );
  }
}
