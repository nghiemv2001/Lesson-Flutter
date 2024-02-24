import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContentPageLive extends StatelessWidget {
  const ContentPageLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 667,
              color: Colors.white,
              child: Image.asset(
                "assets/images/live/Rectangle.png",
                width: double.infinity,
                height: 667,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 48,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset("assets/images/live/Oval.png"),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      "maxjacobson",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      width: 115,
                    ),
                    Container(
                      height: 27,
                      width: 39,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFC5008D),
                            Color(0XFFE20037),
                          ],
                        ),
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
                      height: 27,
                      width: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFF000000).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/live/Views Icon.svg",
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            "1",
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/icons/live/Close Icon.svg",
                      width: 18,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 522,
              child: Row(
                children: [
                  Container(
                    height: 33,
                    width: 33,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset("assets/images/live/Oval (1).png"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "karennne joined",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 5,
              top: 562,
              child: Container(
                height: 43,
                width: 322,
                child: Row(
                  children: [
                    Container(
                      height: 43,
                      width: 248,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9FC4F2).withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            height: 33,
                            width: 33,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset("assets/images/live/Oval.png"),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const SizedBox(
                            width: 190,
                            child: Text(
                              "Send a request to be in maxjacobson's live video.",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 1,
                    ),
                    Container(
                      height: 43,
                      width: 73,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9FC4F2).withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Request",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 616,
              left: 12,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 65,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          "Hello",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 42,
                      width: 51,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 675,
              left: 10,
              child: SizedBox(
                height: 41,
                width: 345,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 41,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: const Color(0xFFFFFFFF).withOpacity(0.2),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Comment",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFFFFFFF).withOpacity(0.4),
                              ),
                            ),
                            SvgPicture.asset("assets/icons/live/Icon Menu.svg"),
                          ],
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/live/Questions.svg"),
                    SvgPicture.asset("assets/icons/live/Messanger.svg"),
                    SvgPicture.asset("assets/icons/live/Like.svg"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
