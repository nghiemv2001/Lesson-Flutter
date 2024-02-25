import 'package:flutter/material.dart';

class AppBarTabView extends StatelessWidget implements PreferredSize {
  const AppBarTabView({required this.tabController, Key? key})
      : super(key: key);
  final TabController tabController;
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: AppBar(
          backgroundColor: const Color(0xFFDFDFDF),
          bottom: TabBar(
            controller: tabController,
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
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(49);
}
