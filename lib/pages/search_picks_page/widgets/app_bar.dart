import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarSearchPick extends StatelessWidget implements PreferredSize {
  const AppBarSearchPick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        elevation: 0,
        leadingWidth: 36,
        backgroundColor: const Color(0xFFFAFAFA),
        centerTitle: true,
        actions: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/search_picks/Back.svg",
                    width: 10,
                    height: 19,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    "All Posts",
                    style: TextStyle(
                      color: Color(0xFF262626),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
