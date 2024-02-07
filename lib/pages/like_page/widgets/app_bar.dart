import 'package:flutter/material.dart';

class App_Bar_Widget extends StatelessWidget implements PreferredSize {
  const App_Bar_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
