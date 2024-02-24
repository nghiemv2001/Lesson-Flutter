import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerProfilePage extends StatelessWidget {
  const DrawerProfilePage({required this.mainContext, Key? key})
      : super(key: key);
  final BuildContext mainContext;
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.1),
          ),
          color: Colors.amber,
        ),
        width: MediaQuery.of(context).size.width * 2 / 3,
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          backgroundColor: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 44,
                      child: DrawerHeader(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Container(
                          child: const Text(
                            's.khasanov_',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF262626),
                            ),
                          ),
                        ),
                      ),
                    ),
                    _itemList(
                      title: 'Archive',
                      icons: "assets/icons/lesson8/Icon.svg",
                    ),
                    _itemList(
                      title: 'Your Activity',
                      icons: "assets/icons/lesson8/Icon (1).svg",
                    ),
                    _itemList(
                      title: 'Nametag',
                      icons: "assets/icons/lesson8/Icon (2).svg",
                    ),
                    _itemList(
                      title: 'Saved',
                      icons: "assets/icons/lesson8/Icon (3).svg",
                    ),
                    _itemList(
                      title: 'Close Friends',
                      icons: "assets/icons/lesson8/Icon (4).svg",
                    ),
                    _itemList(
                      title: 'Discover People',
                      icons: "assets/icons/lesson8/Icon (5).svg",
                    ),
                    _itemList(
                      title: 'Open Facebook',
                      icons: "assets/icons/lesson8/Icon (6).svg",
                    ),
                  ],
                ),
              ),
              _itemList(
                title: 'Settings',
                icons: "assets/icons/lesson8/Icon (7).svg",
              ),
            ],
          ),
        ),
      );

  Widget _itemList(
          {String title = "",
          String icons = "assets/icons/lesson8/Icon (6).svg"}) =>
      Container(
        height: 44,
        width: 251,
        decoration: const BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(mainContext);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFFFFFF),
            elevation: 0,
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icons,
                width: 23,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                width: 13,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF262626),
                ),
              ),
            ],
          ),
        ),
      );
}
