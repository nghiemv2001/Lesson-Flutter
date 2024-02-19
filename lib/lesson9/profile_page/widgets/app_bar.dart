import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBar_Page extends StatelessWidget implements PreferredSize {
  const AppBar_Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFAFAFA),
      elevation: 0,
      centerTitle: true,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/lesson8/Private Icon.svg",
              width: 9,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              "jacob_w",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(
                  0xFF262626,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            SvgPicture.asset(
              "assets/icons/lesson7/Accounts List.svg",
              width: 11,
              height: 7,
              fit: BoxFit.cover,
            ),
          ],
        ),
        const SizedBox(
          width: 70,
        ),
        ElevatedButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFAFAFA),
            elevation: 0,
          ),
          child: SvgPicture.asset(
            'assets/icons/lesson8/Menu.svg',
            width: 21,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 12,
        )
      ],
    );
    ;
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
