import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 51,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/icons/my_live/Shape.svg",
              width: 24,
              fit: BoxFit.fitWidth,
            ),
            Row(
              children: [
                Container(
                  width: 39,
                  height: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: const LinearGradient(colors: [
                      Color(0xFFC5008D),
                      Color(0xFFE20037),
                    ]),
                  ),
                  child: const Center(
                    child: Text(
                      "LIVE",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF000000).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 27,
                  width: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/icons/my_live/Views Icon.svg",
                        width: 10,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Text(
              "End",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
        ),
      );
}
