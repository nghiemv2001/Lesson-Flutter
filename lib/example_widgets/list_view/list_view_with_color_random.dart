import 'dart:math';

import 'package:flutter/material.dart';

class ListViewExampleWithColor extends StatefulWidget {
  const ListViewExampleWithColor({Key? key}) : super(key: key);

  @override
  State<ListViewExampleWithColor> createState() =>
      _ListViewExampleWithColorState();
}

class _ListViewExampleWithColorState extends State<ListViewExampleWithColor> {
  final List<int> _dataList = List.generate(20, (index) => index + 1);
  final colors = <int, Color>{};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: _dataList.map(
              (e) {
                return Container(
                  height: 100,
                  color: Color(Random().nextInt(0xffffffff)),
                  child: Center(
                    child: Text(
                      '$e',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
        Container(
          height: 32,
          color: Colors.transparent,
          child: const Center(
            child: Text(
              "///////////////////",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _dataList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                color: Color(Random().nextInt(0xffffffff)),
                child: Center(
                  child: Text(
                    index.toString(),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
