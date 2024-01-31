import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarDirectMessage extends StatelessWidget implements PreferredSize {
  const AppBarDirectMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFAFAFA),
      elevation: 0,
      leadingWidth: 36,
      centerTitle: true,
      actions: [
        Container(
          padding: EdgeInsets.only(top: 12, bottom: 14),
          child: Stack(alignment: Alignment.topRight, children: [
            SvgPicture.asset(
              "assets/icons/lesson7/Back.svg",
              width: 10,
              fit: BoxFit.fitWidth,
            ),
          ]),
        ),
        SizedBox(
          width: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SvgPicture.asset(
              "assets/icons/lesson7/Accounts List.svg",
              width: 11,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
        const SizedBox(
          width: 103,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 13),
          child: Image.asset(
            'assets/images/lesson7/Add Chat.jpg',
            width: 20,
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(
          width: 12,
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: const Color(0x1A0000000),
          height: 0.1,
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
