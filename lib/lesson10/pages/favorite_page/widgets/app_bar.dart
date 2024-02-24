import 'package:flutter/material.dart';

class AppBarFavoritePage extends StatelessWidget implements PreferredSize {
  const AppBarFavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: 60,
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
