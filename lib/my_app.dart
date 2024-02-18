import 'package:design_ui_instagram/pages/live_page/live_page.dart';
import 'package:design_ui_instagram/pages/story_page/story_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Live_Page(),
    );
  }
}
