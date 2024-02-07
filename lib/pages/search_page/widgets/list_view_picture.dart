import 'package:design_ui_instagram/pages/search_page/modals/itemImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class List_View_Picture_Widget extends StatelessWidget {
  const List_View_Picture_Widget({required this.Images, Key? key})
      : super(key: key);
  final List<ItemImage> Images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: Images.length,
        itemBuilder: (context, index) {
          final item = Images[index];
          return StaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: (item.big == true) ? 2 : 1,
                mainAxisCellCount: (item.big == true) ? 2 : 1,
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
