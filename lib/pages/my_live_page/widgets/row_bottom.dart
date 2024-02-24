import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowBottom extends StatelessWidget {
  const RowBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        left: 10,
        top: 675,
        child: SizedBox(
          width: 345,
          height: 41,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                width: 120,
                height: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFF797979),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Comment",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: const Color(0xFFFFFFFF).withOpacity(0.4),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/my_live/Icon Menu.svg",
                      width: 14,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/icons/my_live/Questions.svg",
                width: 28,
                fit: BoxFit.fitWidth,
              ),
              SvgPicture.asset(
                "assets/icons/my_live/Messanger.svg",
                width: 28,
                fit: BoxFit.fitWidth,
              ),
              SvgPicture.asset(
                "assets/icons/my_live/Emoji.svg",
                width: 28,
                fit: BoxFit.fitWidth,
              ),
              SvgPicture.asset(
                "assets/icons/my_live/Face Masks.svg",
                width: 28,
                fit: BoxFit.fitWidth,
              ),
              Image.asset(
                "assets/images/my_live/Rectangle.png",
                width: 25,
                fit: BoxFit.fitWidth,
              )
            ],
          ),
        ),
      );
}
