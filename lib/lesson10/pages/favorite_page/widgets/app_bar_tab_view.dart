import 'package:flutter/material.dart';

import 'body_favorite_page.dart';

class AppBarTabView extends StatelessWidget implements PreferredSize {
  const AppBarTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFDFDFDF),
            bottom: TabBar(
              indicatorWeight: 1,
              indicator: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: const Color(0xFF262626).withOpacity(0.8),
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
                      color: const Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
                Tab(
                  icon: Text(
                    "You",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF000000).withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              BodyFavoritePage(),
              BodyFavoritePage(),
            ],
          ),
        ),
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(49);
}
