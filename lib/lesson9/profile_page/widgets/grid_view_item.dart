import 'dart:math';

import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => Container(
        color: Color(Random().nextInt(0xffffffff)),
        child: Center(
          child: Stack(
            children: [
              Image.network(
                'https://picsum.photos/250?image=$index',
                errorBuilder: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 124,
                ),
                fit: BoxFit.fitWidth,
              ),
              Positioned.fill(
                child: Align(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Text(
                        index.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
