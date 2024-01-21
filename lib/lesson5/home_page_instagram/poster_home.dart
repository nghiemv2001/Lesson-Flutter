import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/person2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "joshua_l",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 15,
                                width: 15,
                                child: Image.asset(
                                  'assets/images/Shape.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text('Tokyo, Jpan'),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/image_points_icon.jpg",
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              height: 300,
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
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/image_like.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset("assets/images/image_comment.jpg"),
                    Image.asset("assets/images/image_messager_icon.jpg"),
                  ],
                ),
              ),
              Image.asset("assets/images/image_pagination.jpg"),
              Image.asset("assets/images/image_save.jpg"),
            ],
          ),
        )
      ],
    );
  }
}
