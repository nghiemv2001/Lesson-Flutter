import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class App_Bar_Search_Pick extends StatelessWidget implements PreferredSize {
  const App_Bar_Search_Pick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 36,
      backgroundColor: Color(0xFFFAFAFA),
      centerTitle: true,
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/icons/search_picks/Back.svg",
                  width: 10,
                  height: 19,
                  fit: BoxFit.cover,
                ),
                Text(
                  "All Posts",
                  style: TextStyle(
                    color: Color(0xFF262626),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
