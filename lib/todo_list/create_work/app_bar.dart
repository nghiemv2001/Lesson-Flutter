import 'package:flutter/material.dart';

class AppBarCreateWork extends StatelessWidget implements PreferredSize{
  const AppBarCreateWork({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      centerTitle: true,
      title: Text("Thêm mới", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600,),),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(44);
}
