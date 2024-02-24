import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarDirectMessage extends StatelessWidget implements PreferredSize {
  const AppBarDirectMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: const Color(0xFFA6A6AA).withOpacity(0.33),
        elevation: 0,
        leadingWidth: 36,
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.only(top: 12, bottom: 14),
            child: Stack(alignment: Alignment.topRight, children: [
              SvgPicture.asset(
                "assets/icons/lesson7/Back.svg",
                width: 10,
                fit: BoxFit.fitWidth,
              ),
            ]),
          ),
          const SizedBox(
            width: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
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
            child: SvgPicture.asset(
              'assets/icons/lesson7/Add Chat.svg',
              width: 20,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SizedBox(
            width: 12,
          )
        ],
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(44);
}
