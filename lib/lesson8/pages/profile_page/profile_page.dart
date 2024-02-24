import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/app_bar.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/bottom_bar_custom.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/drawer.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/information.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const AppBarPage(),
        body: const InformationWidget(),
        endDrawer: DrawerWidgets(mainContext: context),
        bottomNavigationBar: const BottomBarWidget(),
      );
}
