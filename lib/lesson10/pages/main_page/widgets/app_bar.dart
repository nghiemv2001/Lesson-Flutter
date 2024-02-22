import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarMainPage extends StatelessWidget implements PreferredSize {
  const AppBarMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: SvgPicture.asset(
            "assets/icons/lesson10/Camera Icon.svg",
            width: 24,
            fit: BoxFit.fitWidth,
          ),
        ),
        leadingWidth: 36,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 6),
          child: SvgPicture.asset(
            "assets/icons/lesson10/Instagram Logo.svg",
            height: 28,
            fit: BoxFit.fitHeight,
          ),
        ),
        actions: [
          Row(children: [
            SvgPicture.asset(
              "assets/icons/lesson10/IGTV.svg",
              height: 24,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              width: 18,
            ),
            SvgPicture.asset(
              "assets/icons/lesson10/Messanger.svg",
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          ]),
          const SizedBox(
            width: 12,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: const Color(0x1A0000000).withOpacity(0.1),
            height: 1,
          ),
        ),
      );

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
