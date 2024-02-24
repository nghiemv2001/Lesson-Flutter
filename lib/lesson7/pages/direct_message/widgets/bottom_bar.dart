import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 45,
        width: double.infinity,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 0.3))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "assets/icons/lesson7/Icon.svg",
                    width: 21,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Camera",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF3897F0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
