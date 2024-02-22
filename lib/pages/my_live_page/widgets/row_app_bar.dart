import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class App_Bar_Row extends StatelessWidget {
  const App_Bar_Row({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 51,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                  gradient: LinearGradient(colors: [
                    Color(0xFFC5008D),
                    Color(0xFFE20037),
                  ]),
                ),
                child: Center(
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
              SizedBox(
                width: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF000000).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 27,
                width: 36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/my_live/Views Icon.svg",
                      width: 10,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
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
          Text(
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
}
