import 'package:design_ui_instagram/lesson10/pages/favorite_page/widgets/app_bar_tab_view.dart';
import 'package:design_ui_instagram/lesson10/pages/favorite_page/widgets/body_favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'pages/create_page/body_create_page.dart';
import 'pages/main_page/widgets/app_bar.dart';
import 'pages/main_page/widgets/body_main_page.dart';
import 'pages/profile_page/widgets/app_bar.dart';
import 'pages/profile_page/widgets/body_profile_page.dart';
import 'pages/profile_page/widgets/dawer_profile_page.dart';
import 'pages/search_page/widgets/app_bar.dart';
import 'pages/search_page/widgets/body_search_page.dart';

class InstagramPages extends StatefulWidget {
  const InstagramPages({Key? key}) : super(key: key);

  @override
  State<InstagramPages> createState() => _InstagramPagesState();
}

class _InstagramPagesState extends State<InstagramPages>
    with SingleTickerProviderStateMixin {
  var _selectedTab = 0;
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _handleTabSelection() {
    if (!_tabController.indexIsChanging) {
      setState(() {
        _selectedTab = _tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
        endDrawer:
            _selectedTab == 4 ? DrawerProfilePage(mainContext: context) : null,
      );

  PreferredSizeWidget _buildAppBar() {
    switch (_selectedTab) {
      case 0:
        return AppBarMainPage();
      case 1:
        return AppBarSearchPage();
      case 2:
        return AppBarSearchPage();
      case 3:
        return AppBarTabView(
          tabController: _tabController,
        );
      case 4:
        return AppBarProfilePage();
      default:
        return AppBarProfilePage();
    }
  }

  Widget _buildBody() {
    switch (_selectedTab) {
      case 0:
        return BodyMainPage();
      case 1:
        return BodySearchPage();
      case 2:
        return MyHomePage();
      case 3:
        return BodyFavoritePage(
          tabController: _tabController,
        );
      case 4:
        return BodyProfilePage();
      default:
        return SizedBox();
    }
  }

  Widget _buildBottomNavigationBar() => BottomNavigationBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                _selectedTab == 0
                    ? 'assets/icons/lesson10/Icon.svg'
                    : 'assets/icons/lesson10/Icon (4).svg',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                _selectedTab == 1
                    ? 'assets/icons/lesson10/Icon (7).svg'
                    : 'assets/icons/lesson10/Icon (1).svg',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                _selectedTab == 2
                    ? 'assets/icons/lesson10/Icon (2).svg'
                    : 'assets/icons/lesson10/Icon (2).svg',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                _selectedTab == 3
                    ? 'assets/icons/lesson10/Icon (5).svg'
                    : 'assets/icons/lesson10/Icon (3).svg',
                height: 24,
                fit: BoxFit.fitHeight,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        _selectedTab == 4 ? Colors.black : Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(13.5),
                ),
                padding: const EdgeInsets.all(2),
                width: 28,
                height: 28,
                child: Center(
                  child: Image.asset(
                    'assets/images/lesson10/Oval2.png',
                    height: 24,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
      );
}
