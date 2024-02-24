import 'package:flutter/material.dart';

class AppBarLoginPage extends StatelessWidget implements PreferredSize {
  const AppBarLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 12, left: 16),
          child: Image.asset(
            'assets/images/lesson6/Shape.jpg',
          ),
        ),
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
