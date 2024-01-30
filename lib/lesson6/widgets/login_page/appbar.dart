import 'package:flutter/material.dart';

class AppBarLoginPage extends StatelessWidget implements PreferredSize {
  const AppBarLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(top: 12, left: 16),
        child: Image.asset(
          'assets/images/lesson6/Shape.jpg',
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
