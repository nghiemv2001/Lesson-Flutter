import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IGTV_Show extends StatefulWidget {
  const IGTV_Show({Key? key}) : super(key: key);

  @override
  State<IGTV_Show> createState() => _IGTV_ShowState();
}

class _IGTV_ShowState extends State<IGTV_Show> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/igtv_show/Rectangle.jpg",
                    width: double.infinity,
                    height: 667,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 18,
                    top: 15,
                    child: Container(
                      width: 300,
                      child: Text(
                        "Interviews with leading designers of large companies",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 188,
                    top: 47,
                    child: SvgPicture.asset(
                      "assets/icons/igtv_show/Icon.svg",
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 67,
                    child: Center(
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/igtv_show/User Picture 1.jpg',
                            width: 32,
                            height: 32,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 338,
                    top: 19,
                    child: SvgPicture.asset(
                      'assets/icons/igtv_show/Close Icon.svg',
                      width: 18,
                      height: 18,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 58,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "amanda_design",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 81,
                    left: 58,
                    child: Text(
                      "September 13",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 588,
                    left: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "37.256 views",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        Text(
                          "373 comments",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 625,
                    left: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/igtv_show/Like.svg")
                      ],
                    ),
                  ),
                  Positioned(
                    top: 625,
                    left: 57,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/igtv_show/Comment.svg")
                      ],
                    ),
                  ),
                  Positioned(
                    top: 625,
                    left: 97,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/igtv_show/Messanger.svg")
                      ],
                    ),
                  ),
                  Positioned(
                    top: 634,
                    left: 141,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/igtv_show/More Icon.svg")
                      ],
                    ),
                  ),
                  Positioned(
                    left: 272,
                    top: 620,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.white.withOpacity(0.6),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 31,
                      width: 87,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                "assets/icons/igtv_show/Arrow Top.svg"),
                            Text(
                              "Up Next",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFEFEFE),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/igtv_show/Shape.png",
                      width: 11,
                      height: 13,
                      fit: BoxFit.fitWidth,
                    ),
                    SvgPicture.asset("assets/icons/igtv_show/Player Track.svg"),
                    Text(
                      "08:31",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
