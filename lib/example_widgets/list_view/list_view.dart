import 'package:design_ui_instagram/example_widgets/list_view/list_view_with_color_random.dart';
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: SafeArea(
          child: ListViewExampleWithColor(),
        ),
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
