import 'package:flutter/material.dart';

class ColumnText extends StatelessWidget {
  const ColumnText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Positioned(
        left: 10,
        top: 564,
        child: SizedBox(
          width: 305,
          height: 49,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 26,
                width: 280,
                child: Text(
                  "We're telling your followers that you’ve started a live video.",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFFFFFFFF).withOpacity(0.5),
                  ),
                ),
              ),
              Text(
                "Hang on! We're telling more followers to join your video.",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFFFFFFF).withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      );
}
