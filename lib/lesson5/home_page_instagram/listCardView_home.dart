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
          bottom: BorderSide(width: 0.5, color: Colors.black26),
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 9, bottom: 8, left: 10),
          child: Row(
            children: images
                .map(
                  (e) => Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 62,
                              width: 62,
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
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(45),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'assets/images/${e.image}',
                                          fit: BoxFit.cover,
                                          width: 56,
                                          height: 56,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            e.status
                                ? Center(
                                    child: Container(
                                      height: 16,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Center(
                                          child: Text(
                                        "LIVE",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8),
                                      )),
                                    ),
                                  )
                                : Center(
                                    child: Container(
                                    height: 0,
                                    width: 0,
                                  ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Text(
                          e.name,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
