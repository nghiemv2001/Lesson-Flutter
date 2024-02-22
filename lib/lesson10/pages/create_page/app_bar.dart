import 'package:flutter/material.dart';

class AppBarFavourite extends StatelessWidget implements PreferredSize {
  const AppBarFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFA6A6AA).withOpacity(0.33),
      elevation: 0,
      leadingWidth: 36,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: Row(
            children: [
              Container(
                width: 180,
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Folowing",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black,
                    ),
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Folowing",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
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
