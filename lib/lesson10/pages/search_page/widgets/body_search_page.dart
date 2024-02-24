import 'package:design_ui_instagram/pages/search_page/modals/itemFavourite.dart';
import 'package:design_ui_instagram/pages/search_page/modals/itemImage.dart';
import 'package:design_ui_instagram/pages/search_page/widgets/card_view.dart';
import 'package:design_ui_instagram/pages/search_page/widgets/list_view_picture.dart';
import 'package:design_ui_instagram/pages/search_page/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class BodySearchPage extends StatefulWidget {
  const BodySearchPage({Key? key}) : super(key: key);

  @override
  State<BodySearchPage> createState() => BodySearchPageState();
}

class BodySearchPageState extends State<BodySearchPage> {
  List<ItemFavourite> itemFavourites = <ItemFavourite>[
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

  List<ItemImage> Images = <ItemImage>[
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: true),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
    ItemImage(image: "assets/images/search_page/Gallery.jpg", big: false),
  ];
  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            const SearchInSearchPage(),
            CardViewWidget(
              itemFavouritese: itemFavourites,
            ),
            GirdViewPicture(
              images: Images,
            ),
          ],
        ),
      );
}
