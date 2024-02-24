import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/lesson8/Icon0.svg',
              width: 24,
              fit: BoxFit.fitWidth,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/lesson8/Icon1.svg",
              width: 24,
              fit: BoxFit.fitWidth,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/lesson8/Shape.svg",
              width: 24,
              fit: BoxFit.fitWidth,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/lesson8/Icon2.svg",
              width: 24,
              fit: BoxFit.fitWidth,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 27,
              width: 27,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF262626),
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
            label: "",
          ),
        ],
      );
}
