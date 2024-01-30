import 'package:flutter/material.dart';

class AvatarItem extends StatelessWidget {
  const AvatarItem({Key? key, required this.avater, required this.isLive})
      : super(key: key);
  final String avater;
  final bool isLive;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 64,
          width: 64,
          margin: EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: isLive
                    ? [
                        const Color(0xFFE20337),
                        const Color(0xFFC60188),
                        const Color(0xFF7700C3)
                      ]
                    : [
                        const Color(0xFFFBC147),
                        const Color(0xFFD91A46),
                        const Color(0xFFA60F93),
                      ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          child: Center(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  avater,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
