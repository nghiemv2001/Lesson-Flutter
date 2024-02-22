import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    required this.post,
    Key? key,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 54,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                post.avatar,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "joshua_l",
                      style: TextStyle(
                          color: Color(0xFF262626),
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Image.asset(
                        'assets/images/lesson10/Official Icon.png',
                        width: 9,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Tokyo, Jpan',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(width: 10),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(
                "assets/icons/lesson10/More Icon.svg",
                width: 14,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      );
}
