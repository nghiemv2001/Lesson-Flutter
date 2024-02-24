import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarSearchPicks extends StatelessWidget {
  const BottomBarSearchPicks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 45,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SvgPicture.asset(
                "assets/icons/search_picks/Icon (1).svg",
                width: 24,
                fit: BoxFit.fitWidth,
              ),
              SvgPicture.asset(
                "assets/icons/search_picks/Icon2.svg",
                width: 24,
                fit: BoxFit.fitWidth,
              ),
              SvgPicture.asset(
                "assets/icons/search_picks/Shape.svg",
                width: 24,
                fit: BoxFit.fitWidth,
              ),
              SvgPicture.asset(
                "assets/icons/search_picks/Icon.svg",
                width: 24,
                fit: BoxFit.fitWidth,
              ),
              Container(
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFC7C7CC),
                  ),
                ),
                child: Center(
                  child: Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/images/lesson8/Oval.jpg',
                        width: 27,
                        height: 27,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
