import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/app_bar.dart';
import 'package:design_ui_instagram/lesson8/pages/profile_page/widgets/information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_Page(),
      body: Information_WIdget(),
      endDrawer: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.1),
          ),
          color: Color(0xFFFFFFFF),
        ),
        width: MediaQuery.of(context).size.width * 2 / 3,
        height: double.infinity,
        child: Drawer(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                      height: 120,
                      child: DrawerHeader(
                        margin: EdgeInsets.only(top: 0),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(top: 0),
                          child: Text(
                            's.khasanov_',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF262626),
                            ),
                          ),
                        ),
                      ),
                    ),
                    IteamList(
                      title: 'Home',
                      icons: "assets/icons/lesson8/Icon.svg",
                    ),
                    IteamList(
                      title: 'Your Activity',
                      icons: "assets/icons/lesson8/Icon (1).svg",
                    ),
                    IteamList(
                      title: 'Nametag',
                      icons: "assets/icons/lesson8/Icon (2).svg",
                    ),
                    IteamList(
                      title: 'Saved',
                      icons: "assets/icons/lesson8/Icon (3).svg",
                    ),
                    IteamList(
                      title: 'Close Friends',
                      icons: "assets/icons/lesson8/Icon (4).svg",
                    ),
                    IteamList(
                      title: 'Discover People',
                      icons: "assets/icons/lesson8/Icon (5).svg",
                    ),
                    IteamList(
                      title: 'Open Facebook',
                      icons: "assets/icons/lesson8/Icon (6).svg",
                    ),
                  ],
                ),
              ),
              IteamList(
                title: 'Settings',
                icons: "assets/icons/lesson8/Icon (7).svg",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget IteamList(
      {String title = "", String icons = "assets/icons/lesson8/Icon (6).svg"}) {
    return Container(
      height: 44,
      width: 251,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFFFFFF), elevation: 0),
        child: Row(
          children: [
            SvgPicture.asset(
              icons,
              width: 23,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 13,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xFF262626),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
