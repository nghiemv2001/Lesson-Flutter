import 'package:design_ui_instagram/pages/search_picks_page/widgets/app_bar.dart';
import 'package:design_ui_instagram/pages/search_picks_page/widgets/bottom_bar.dart';
import 'package:design_ui_instagram/pages/search_picks_page/widgets/gird_view_picture.dart';
import 'package:flutter/material.dart';

class SearchPicks extends StatefulWidget {
  const SearchPicks({Key? key}) : super(key: key);

  @override
  State<SearchPicks> createState() => _SearchPicksState();
}

class _SearchPicksState extends State<SearchPicks> {
  List<String> dataImage = <String>[
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
  Widget build(BuildContext context) => Scaffold(
        appBar: const AppBarSearchPick(),
        body: GirdViewPicture(
          dataImage: dataImage,
        ),
        bottomNavigationBar: const BottomBarSearchPicks(),
      );
}
