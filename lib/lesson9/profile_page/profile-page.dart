import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/app_bar.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/bottom_bar_custom.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/drawer.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/information.dart';
import 'package:flutter/material.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBar_Page(),
      body: const Information_WIdget(),
      endDrawer: Drawer_Widgets(mainContext: context),
      bottomNavigationBar: const BottomBar_Widget(),
    );
  }
}
