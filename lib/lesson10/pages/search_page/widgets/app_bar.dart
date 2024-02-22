import 'package:flutter/material.dart';

class AppBarSearchPage extends StatelessWidget implements PreferredSize {
  const AppBarSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(1);
}
