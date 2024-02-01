import 'package:design_ui_instagram/lesson7/pages/direct_message/widgets/app_bar.dart';
import 'package:design_ui_instagram/lesson7/pages/direct_message/widgets/app_bar_search.dart';
import 'package:design_ui_instagram/lesson7/pages/direct_message/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/lesson7/pages/direct_message/widgets/list_view.dart';
import 'package:flutter/material.dart';

import 'modals/itemMessage.dart';

class Direct_Message_Page extends StatefulWidget {
  const Direct_Message_Page({Key? key}) : super(key: key);

  @override
  State<Direct_Message_Page> createState() => _Direct_Message_PageState();
}

class _Direct_Message_PageState extends State<Direct_Message_Page> {
  List<ItemMessage> listMessage = [
    ItemMessage(
        name: "joshua_l",
        status: 1,
        image: "assets/images/lesson7/Oval0.jpg",
        message: "Have a nice day, bro!",
        timeOn: "now"),
    ItemMessage(
        name: "karennne",
        status: 0,
        image: "assets/images/lesson7/Oval11.jpg",
        message: "I heard this is a good movie, s…",
        timeOn: "now"),
    ItemMessage(
        name: "martini_rond",
        status: 0,
        image: "assets/images/lesson7/Oval1.jpg",
        message: "See you on the next meeting!",
        timeOn: "15m"),
    ItemMessage(
        name: "andrewww_",
        status: 1,
        image: "assets/images/lesson7/Oval2.jpg",
        message: "Sounds good 😂😂😂",
        timeOn: "20m"),
    ItemMessage(
        name: "kiero_d",
        status: 1,
        image: "assets/images/lesson7/Oval3.jpg",
        message: "The new design looks cool, b…",
        timeOn: "1m"),
    ItemMessage(
        name: "maxjacobson",
        status: 1,
        image: "assets/images/lesson7/Oval4.jpg",
        message: "Thank you, bro!",
        timeOn: "2h"),
    ItemMessage(
        name: "jamie.francol",
        status: 1,
        image: "assets/images/lesson7/Oval5.jpg",
        message: "Yeap, I'm going to travel in To…",
        timeOn: "4h"),
    ItemMessage(
        name: "m_humphrey",
        status: 0,
        image: "assets/images/lesson7/Oval6.jpg",
        message: "Instagram UI is pretty good",
        timeOn: "5h"),
    ItemMessage(
        name: "m_humphrey",
        status: 0,
        image: "assets/images/lesson7/Oval0.jpg",
        message: "Have a nice day, bro!",
        timeOn: "now"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDirectMessage(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              AppBarSearch(),
              ListViewWidget(listmessage: listMessage),
              BottomBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
