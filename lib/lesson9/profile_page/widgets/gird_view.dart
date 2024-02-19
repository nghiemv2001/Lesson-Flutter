import 'package:flutter/material.dart';

class GirdView_Widgets extends StatefulWidget {
  const GirdView_Widgets({Key? key}) : super(key: key);

  @override
  State<GirdView_Widgets> createState() => _GirdView_WidgetsState();
}

class _GirdView_WidgetsState extends State<GirdView_Widgets> {
  final List<String> _dataList = [
    "assets/images/lesson8/Rectangle.jpg",
    "assets/images/lesson8/Rectangle1.jpg",
    "assets/images/lesson8/Rectangle2.jpg",
    "assets/images/lesson8/Rectangle3.jpg",
    "assets/images/lesson8/Video Post.jpg",
    "assets/images/lesson8/Rectangle4.jpg",
    "assets/images/lesson8/Rectangle5.jpg",
    "assets/images/lesson8/Rectangle6.jpg",
    "assets/images/lesson8/Rectangle7.jpg",
    "assets/images/lesson8/Rectangle.jpg",
    "assets/images/lesson8/Rectangle1.jpg",
    "assets/images/lesson8/Rectangle2.jpg",
    "assets/images/lesson8/Rectangle.jpg",
    "assets/images/lesson8/Rectangle1.jpg",
    "assets/images/lesson8/Rectangle2.jpg",
    "assets/images/lesson8/Rectangle3.jpg",
    "assets/images/lesson8/Video Post.jpg",
    "assets/images/lesson8/Rectangle4.jpg",
    "assets/images/lesson8/Rectangle5.jpg",
    "assets/images/lesson8/Rectangle6.jpg",
    "assets/images/lesson8/Rectangle7.jpg",
    "assets/images/lesson8/Rectangle.jpg",
    "assets/images/lesson8/Rectangle1.jpg",
    "assets/images/lesson8/Rectangle2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    print(_dataList.length);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
      ),
      itemCount: _dataList.length,
      itemBuilder: (context, index) {
        return GridTile(
          child: Image.asset(
            _dataList[index],
            width: 124,
            height: 124,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
