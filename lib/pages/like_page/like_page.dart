import 'package:design_ui_instagram/pages/like_page/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar_Widget(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
