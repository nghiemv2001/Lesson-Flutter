import 'package:flutter/material.dart';

class Gird_View_Picture extends StatelessWidget {
  const Gird_View_Picture({required this.dataImage, Key? key})
      : super(key: key);
  final List<String> dataImage;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 1, crossAxisSpacing: 1),
      itemBuilder: (context, index) {
        return Container(
          height: 124,
          width: 124,
          child: Image.asset(
            dataImage[index],
            width: 124,
            height: 124,
            fit: BoxFit.cover,
          ),
        );
      },
      itemCount: dataImage.length,
    );
  }
}
