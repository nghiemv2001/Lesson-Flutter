import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/appbar_home.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/bottomPage_home.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/lesson8/pages/main_page/widgets/listCardView_home.dart';
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
