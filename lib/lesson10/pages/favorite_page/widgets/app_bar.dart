import 'package:flutter/material.dart';

class AppBarFavoritePage extends StatelessWidget implements PreferredSize {
  const AppBarFavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: 60,
      );

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
