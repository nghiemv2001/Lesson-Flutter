import 'package:flutter/material.dart';

class AppBarUpdateWork extends StatelessWidget implements PreferredSize {
  const AppBarUpdateWork({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text("Chỉnh sửa", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600,),),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
