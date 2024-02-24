import 'package:design_ui_instagram/lesson9/main_instagram/widgets/app_bar_home.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/bottom_page_home.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/list_card_view_home.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/poster_home.dart';
import 'package:flutter/material.dart';

class MainInstagram extends StatefulWidget {
  const MainInstagram({Key? key}) : super(key: key);

  @override
  State<MainInstagram> createState() => _HomePageInstagramState();
}

class _HomePageInstagramState extends State<MainInstagram> {
  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: AppBarHome(),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              ListCardItem(),
              Poster(),
              BottomPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomBarWidget(),
      );
}
