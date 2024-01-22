import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 11, bottom: 11),
                    child: Container(
                      height: 32,
                      width: 32,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/person2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "joshua_l",
                              style: TextStyle(
                                  color: Color(0xFF262626),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Image.asset(
                                'assets/images/Shape.jpg',
                                width: 9,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Tokyo, Jpan',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/images/image_points_icon.jpg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              height: 375,
              width: double.infinity,
              color: Colors.orange,
              child: Image.asset(
                "assets/images/image_poster.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12),
              child: Container(
                height: 26,
                width: 34,
                decoration: BoxDecoration(
                    color: Color(0xFF1F484C),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "1/3",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: 15.4, top: 10, left: 14, bottom: 13.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 105,
                child: Padding(
                  padding: const EdgeInsets.only(right: 17.34),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/image_like.jpg",
                        width: 24,
                        fit: BoxFit.fitWidth,
                      ),
                      Image.asset(
                        "assets/images/image_comment.jpg",
                        width: 24,
                        fit: BoxFit.fitWidth,
                      ),
                      Image.asset(
                        "assets/images/image_messager_icon.jpg",
                        width: 24,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Container(
                  child: Image.asset(
                    "assets/images/image_pagination.jpg",
                    width: 26,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/image_save.jpg",
                width: 24,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        )
      ],
    );
  }
}
