import 'package:design_ui_instagram/pages/igtv_show_page/igtv_show_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IGTV_Show(),
    );
  }
}
