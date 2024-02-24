import 'package:flutter/material.dart';

class AppBarProfileEdit extends StatelessWidget implements PreferredSize {
  const AppBarProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: const Color(0xFFA6A6AA).withOpacity(0.33),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          const SizedBox(
            height: 12,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Cancel",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF262626)),
            ),
          ),
          const SizedBox(
            width: 75,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Edit Profile",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF262626)),
            ),
          ),
          const SizedBox(
            width: 81,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Done",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(
                  0xFF3897F0,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 11,
          )
        ],
      );

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(44);
}
