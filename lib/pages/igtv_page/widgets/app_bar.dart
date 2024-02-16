import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class App_Bar_IGTV extends StatelessWidget implements PreferredSize {
  const App_Bar_IGTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 36,
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/icons/igtv/Back.svg",
                  width: 10,
                  height: 19,
                  fit: BoxFit.cover,
                ),
                Text(
                  "IGTV",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/igtv/Shape 2.svg",
                      width: 24,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/icons/igtv/Add.svg",
                      width: 24,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                )
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
