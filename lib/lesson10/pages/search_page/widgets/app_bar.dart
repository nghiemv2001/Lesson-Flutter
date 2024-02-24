import 'package:flutter/material.dart';

class AppBarSearchPage extends StatelessWidget implements PreferredSize {
  const AppBarSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: 60,
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(1);
}
