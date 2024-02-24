import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/app_bar_home.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/bottom_page_home.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/list_card_view_home.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/poster_home.dart';
import 'package:flutter/material.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ListCardItem(),
            Poster(),
            BottomPage(),
            BottomBar()
          ],
        ),
      ),
    );
    ;
  }
}
