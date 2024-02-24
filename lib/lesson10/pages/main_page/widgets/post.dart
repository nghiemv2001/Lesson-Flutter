import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostState();
}

class _PostState extends State<PostWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 11, bottom: 11),
                    child: SizedBox(
                      height: 32,
                      width: 32,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/lesson10/Oval.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 9),
                        child: Row(
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
                      ),
                      const Text(
                        'Tokyo, Jpan',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(
                  "assets/icons/lesson10/More Icon.svg",
                  width: 14,
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Container(
                height: 375,
                width: double.infinity,
                color: Colors.orange,
                child: PageView(
                  controller: _pageController,
                  pageSnapping: true,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Image.asset(
                      "assets/images/lesson10/Rectangle.png",
                      width: 375,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      "assets/images/lesson10/place (2).jpg",
                      width: 375,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      "assets/images/lesson10/place (1).jpg",
                      width: 375,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, right: 12),
                child: Container(
                  height: 26,
                  width: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F484C),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "${_currentPage + 1}/3",
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 15.4, top: 10, left: 14, bottom: 13.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 105,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 17.34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SvgPicture.asset(
                          "assets/icons/lesson10/Shape.svg",
                          width: 24,
                          fit: BoxFit.fitWidth,
                        ),
                        SvgPicture.asset(
                          "assets/icons/lesson10/Comment.svg",
                          width: 24,
                          fit: BoxFit.fitWidth,
                        ),
                        SvgPicture.asset(
                          "assets/icons/lesson10/Messanger.svg",
                          width: 24,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Image.asset(
                    "assets/images/lesson10/Pagination.png",
                    width: 26,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/lesson10/Save.svg",
                  width: 24,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.5, bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/lesson10/Oval1.png",
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
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Text("and ", style: TextStyle(fontSize: 13)),
                      Text(
                        "44,686 others",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w600),
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
                children: const <TextSpan>[
                  TextSpan(
                    text: 'joshua_l',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text:
                        ' The game in Japan was amazing and I want to share some photos',
                    style: TextStyle(fontSize: 13, wordSpacing: 2),
                  ),
                ],
              ),
            ),
          )
        ],
      );
}
