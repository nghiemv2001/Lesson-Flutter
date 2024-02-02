import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black, width: 0.3))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Image.asset(
            "assets/images/lesson8/image_tab1.jpg",
            width: 22,
            fit: BoxFit.fitWidth,
          )),
          Expanded(
              child: Image.asset(
            "assets/images/lesson8/image_tab2.png",
            width: 22,
            fit: BoxFit.fitWidth,
          )),
          Expanded(
              child: Image.asset(
            "assets/images/lesson8/image_tab3.png",
            width: 22,
            fit: BoxFit.fitWidth,
          )),
          Expanded(
              child: Image.asset(
            "assets/images/lesson8/image_tab4.png",
            width: 22,
            fit: BoxFit.fitWidth,
          )),
          Expanded(
              child: Image.asset(
            "assets/images/lesson8/image_tab5.png",
            width: 24,
            fit: BoxFit.fitWidth,
          )),
        ],
      ),
    );
  }
}
