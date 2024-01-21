import 'package:design_ui_instagram/lesson5/modal/item_modal.dart';
import 'package:flutter/material.dart';

class ListCardItem extends StatefulWidget {
  const ListCardItem({Key? key}) : super(key: key);

  @override
  State<ListCardItem> createState() => _ListCardItemState();
}

class _ListCardItemState extends State<ListCardItem> {
  List<Item> images = [
    Item(name: 'Your Story', image: 'person1jpg.jpg', status: false),
    Item(name: 'karennne', image: 'person2.jpg', status: true),
    Item(name: 'zackjohn', image: 'person3.jpg', status: false),
    Item(name: 'kieron_d', image: 'person4.jpg', status: false),
    Item(name: 'craig_d', image: 'person5.jpg', status: false),
    Item(name: 'zackjohn', image: 'person2.jpg', status: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
          top: BorderSide(width: 0.5, color: Colors.black),
          left: BorderSide(color: Color(0xFFFFFFFF)),
          right: BorderSide(),
          bottom: BorderSide(width: 0.5, color: Colors.black26),
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: images
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(top: 5, right: 6, left: 6),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFFBC147),
                                      Color(0xFFD91A46),
                                      Color(0xFFA60F93)
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Center(
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 5,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(45),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/${e.image}',
                                          fit: BoxFit.cover,
                                          width: 90,
                                          height: 90,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            e.status
                                ? Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 25,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            height: 25,
                                            width: 50,
                                            child: Center(
                                                child: Text(
                                              "LIVE",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Center(
                                    child: Container(
                                    height: 0,
                                    width: 0,
                                  ))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(e.name),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
