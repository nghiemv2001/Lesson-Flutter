import 'package:flutter/material.dart';

class GirdViewPicture extends StatelessWidget {
  const GirdViewPicture({required this.dataImage, super.key});
  final List<String> dataImage;
  @override
  Widget build(BuildContext context) => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (context, index) => SizedBox(
          height: 124,
          width: 124,
          child: Image.asset(
            dataImage[index],
            width: 124,
            height: 124,
            fit: BoxFit.cover,
          ),
        ),
        itemCount: dataImage.length,
      );
}
