import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Row(
            children: <Widget>[
              Image.asset("assets/images/image_oval.jpg"),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: <Widget>[
                    Text("Liked by "),
                    Text(
                      "craig_love ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("and "),
                    Text(
                      "44,686 others",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: [
                  TextSpan(
                    text: 'joshua_l',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          ' The game in Japan was amazing and I want to share some photos',
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ))
      ],
    );
  }
}
