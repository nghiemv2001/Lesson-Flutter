import 'package:design_ui_instagram/pages/igtv_page/modals/item.dart';
import 'package:design_ui_instagram/pages/igtv_page/widgets/app_bar.dart';
import 'package:design_ui_instagram/pages/igtv_page/widgets/list_item.dart';
import 'package:flutter/material.dart';

class IGTV_Page extends StatefulWidget {
  const IGTV_Page({Key? key}) : super(key: key);

  @override
  State<IGTV_Page> createState() => _IGTV_PageState();
}

class _IGTV_PageState extends State<IGTV_Page> {
  List<ItemIGTV> dataIgtv = <ItemIGTV>[
    ItemIGTV(
        image: "assets/images/igtv/image1.jpg",
        time: "9:14",
        message: "Interviews with leading designers of large compa…",
        name: "amanda_design",
        view: 37.2),
    ItemIGTV(
        image: "assets/images/igtv/Video.jpg",
        time: "5:23",
        message: "Regular and studio shooting comparison",
        name: "photo.master",
        view: 52.4),
    ItemIGTV(
        image: "assets/images/igtv/Video1.jpg",
        time: "9:14",
        message: "Interviews with leading designers of large compa…",
        name: "amanda_design",
        view: 37.2),
    ItemIGTV(
        image: "assets/images/igtv/Video2.jpg",
        time: "5:23",
        message: "Regular and studio shooting comparison",
        name: "photo.master",
        view: 52.4),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const App_Bar_IGTV(),
        body: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/igtv/Rectangle.jpg",
              height: 375,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: List_Item(
                dataItem: dataIgtv,
              ),
            )
          ],
        ),
      );
}
