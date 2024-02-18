import 'package:design_ui_instagram/pages/live_page/widgets/content.dart';
import 'package:flutter/material.dart';

class Live_Page extends StatelessWidget {
  const Live_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Content_Page_Live(),
      ),
    );
  }
}
