import 'package:design_ui_instagram/pages/search_page/widgets/card_view.dart';
import 'package:design_ui_instagram/pages/search_page/widgets/list_view_picture.dart';
import 'package:design_ui_instagram/pages/search_page/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import 'modals/itemFavourite.dart';
import 'modals/itemImage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ItemFavourite> itemFavourites = [
    ItemFavourite(name: "IGTV", image: "assets/icons/search_page/Icon.svg"),
    ItemFavourite(name: "Shop", image: "assets/icons/search_page/Icon1.svg"),
    ItemFavourite(name: "Style"),
    ItemFavourite(name: "Sports"),
    ItemFavourite(name: "Auto"),
    ItemFavourite(name: "IGTV", image: "assets/icons/search_page/Icon.svg"),
    ItemFavourite(name: "Shop", image: "assets/icons/search_page/Icon1.svg"),
    ItemFavourite(name: "Style"),
    ItemFavourite(name: "Sports"),
    ItemFavourite(name: "Auto"),
  ];

  List<ItemImage> Images = [
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: true),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Search_Bar_widget(),
              Card_View_Widget(
                itemFavouritese: itemFavourites,
              ),
              List_View_Picture_Widget(
                Images: Images,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
