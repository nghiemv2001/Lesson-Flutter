import 'package:flutter/material.dart';

class RowComment extends StatelessWidget {
  const RowComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        left: 10,
        top: 622,
        child: SizedBox(
          width: 317,
          height: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Image.asset(
                    "assets/images/my_live/User Picture 2.png",
                    width: 32,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "maxjacobson joined",
                    style: TextStyle(
                        color: Color(0xFFFEFEFE),
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Container(
                height: 35,
                width: 81,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/my_live/Hi.png",
                      width: 13,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Wave",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
