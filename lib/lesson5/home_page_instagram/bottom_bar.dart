import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 0.3))),
      child: Row(
        children: <Widget>[
          Expanded(child: Image.asset("assets/images/image_tab1.jpg")),
          Expanded(child: Image.asset("assets/images/image_tab2.png")),
          Expanded(child: Image.asset("assets/images/image_tab3.png")),
          Expanded(child: Image.asset("assets/images/image_tab4.png")),
          Expanded(child: Image.asset("assets/images/image_tab5.png")),
        ],
      ),
    );
  }
}
