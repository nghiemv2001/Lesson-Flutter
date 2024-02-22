import 'package:flutter/material.dart';

import 'body_favorite_page.dart';

class AppBarTabView extends StatelessWidget implements PreferredSize {
  const AppBarTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFDFDFDF),
            bottom: TabBar(
              indicatorWeight: 1,
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF262626).withOpacity(0.8),
                  ),
                ),
              ),
              tabs: [
                Tab(
                  icon: Text(
                    "Following",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
                Tab(
                  icon: Text(
                    "You",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BodyFavoritePage(),
              BodyFavoritePage(),
            ],
          ),
        ),
      );

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(49);
}
