import 'package:flutter/material.dart';

class FollowRequired extends StatelessWidget {
  const FollowRequired({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 1),
        width: double.infinity,
        height: 48,
        child: const Padding(
          padding: EdgeInsets.only(
            left: 16,
            top: 14,
            bottom: 14,
          ),
          child: Text(
            "Follow Requests",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF262626),
            ),
          ),
        ),
      );
}
