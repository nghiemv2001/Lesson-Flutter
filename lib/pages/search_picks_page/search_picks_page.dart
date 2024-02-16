import 'package:design_ui_instagram/pages/search_picks_page/widgets/app_bar.dart';
import 'package:design_ui_instagram/pages/search_picks_page/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/pages/search_picks_page/widgets/gird_view_picture.dart';
import 'package:flutter/material.dart';

class Search_Picks extends StatefulWidget {
  const Search_Picks({Key? key}) : super(key: key);

  @override
  State<Search_Picks> createState() => _Search_PicksState();
}

class _Search_PicksState extends State<Search_Picks> {
  List<String> dataImage = [
    "assets/images/search_picks/Rectangle.jpg",
    "assets/images/search_picks/Rectangle (1).jpg",
    "assets/images/search_picks/Rectangle (2).jpg",
    "assets/images/search_picks/Rectangle (3).jpg",
    "assets/images/search_picks/Gallery Post.jpg",
    "assets/images/search_picks/Video Post.jpg",
    "assets/images/search_picks/Gallery Post (1).jpg",
    "assets/images/search_picks/Rectangle (4).jpg",
    "assets/images/search_picks/Gallery Post (2).jpg",
    "assets/images/search_picks/IGTV Post.jpg",
    "assets/images/search_picks/Rectangle (5).jpg",
    "assets/images/search_picks/Rectangle (6).jpg",
    "assets/images/search_picks/Rectangle (7).jpg",
    "assets/images/search_picks/Gallery Post (2).jpg",
    "assets/images/search_picks/Gallery Post (3).jpg",
    "assets/images/search_picks/Rectangle (8).jpg",
    "assets/images/search_picks/Rectangle (9).jpg",
    "assets/images/search_picks/Gallery Post.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: App_Bar_Search_Pick(),
      body: Gird_View_Picture(
        dataImage: dataImage,
      ),
      bottomNavigationBar: Bottom_Bar_Search_Picks(),
    );
  }
}
