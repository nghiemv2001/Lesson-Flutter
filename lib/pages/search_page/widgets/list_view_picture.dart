import 'package:design_ui_instagram/pages/search_page/modals/itemImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GirdViewPicture extends StatelessWidget {
  const GirdViewPicture({required this.images, Key? key}) : super(key: key);
  final List<ItemImage> images;

  @override
  Widget build(BuildContext context) => Expanded(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          children: <Widget>[
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Gallery.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset(
                "assets/images/search_page/Rectangle1.jpg",
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle2.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle3.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle4.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle5.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle6.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle7.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle8.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset(
                "assets/images/search_page/Rectangle.png",
                width: 249,
                fit: BoxFit.cover,
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Image.asset(
                "assets/images/search_page/Rectangle10.jpg",
                width: 124,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
}
