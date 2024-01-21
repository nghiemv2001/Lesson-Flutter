import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/images/image_camera_icon.jpg'),
            Image.asset("assets/images/image_logo_instagram.jpg"),
            Container(
              width: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset('assets/images/image_shape_icon.jpg'),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )
                    ],
                  ),
                  Image.asset('assets/images/image_messager_icon.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
