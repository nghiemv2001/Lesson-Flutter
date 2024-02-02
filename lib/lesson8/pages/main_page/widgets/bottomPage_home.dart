import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15.5),
          child: Row(
            children: <Widget>[
              SizedBox(
                child: Center(
                  child: Text("HIII"),
                ),
              ),
              Image.asset(
                "assets/images/lesson8/image_oval.jpg",
                width: 17,
                fit: BoxFit.fitWidth,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Row(
                  children: <Widget>[
                    Text("Liked by "),
                    Text(
                      "craig_love ",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                    Text("and ", style: TextStyle(fontSize: 13)),
                    Text(
                      "44,686 others",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5, right: 15, left: 15),
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'joshua_l',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                TextSpan(
                    text:
                        ' The game in Japan was amazing and I want to share some photos',
                    style: TextStyle(fontSize: 13, wordSpacing: 2)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
