import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/bottom_bar_custom.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/appbar_home.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/bottomPage_home.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/listCardView_home.dart';
import 'package:design_ui_instagram/lesson9/main_instagram/widgets/poster_home.dart';
import 'package:flutter/material.dart';

class Main_Instagram extends StatefulWidget {
  const Main_Instagram({Key? key}) : super(key: key);

  @override
  State<Main_Instagram> createState() => _HomePageInstagramState();
}

class _HomePageInstagramState extends State<Main_Instagram> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
      bottomNavigationBar: BottomBar_Widget(),
    );
  }
}
