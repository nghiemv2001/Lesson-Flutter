import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSize {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFAFAFA),
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Image.asset(
          "assets/images/lesson8/image_camera_icon.jpg",
          width: 24,
          fit: BoxFit.fitWidth,
        ),
      ),
      leadingWidth: 36,
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 6),
        child: Image.asset(
          "assets/images/lesson8/image_logo_instagram.jpg",
          width: 105,
          fit: BoxFit.fitWidth,
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(top: 7),
          child: Stack(alignment: Alignment.topRight, children: [
            Image.asset(
              'assets/images/lesson8/image_shape_icon.jpg',
              width: 24,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ]),
        ),
        const SizedBox(
          width: 18,
        ),
        Image.asset(
          'assets/images/lesson8/image_messager_icon.jpg',
          width: 23,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 12,
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: const Color(0x1A0000000),
          height: 0.5,
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(44);
}
