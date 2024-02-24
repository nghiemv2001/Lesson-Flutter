import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageLesson6 extends StatelessWidget {
  const HomePageLesson6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/lesson6/Instagram Logo.svg',
                  width: 182,
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 52,
                ),
                SizedBox(
                  height: 115,
                  width: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/lesson6/Oval.jpg',
                        width: 85,
                        fit: BoxFit.fitWidth,
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const Text(
                        "jacob_w",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ButtonLogIn(),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      print("Switch accounts");
                    },
                    child: const Text(
                      "Switch accounts",
                      style: TextStyle(
                        color: Color(0xFF3797EF),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ))
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 0.1),
          ),
          child: Center(
            child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                  text: "Don’t have an account?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                ),
                TextSpan(
                  text: " Sign up.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF262626),
                  ),
                )
              ]),
            ),
          ),
        ),
      );

  Widget ButtonLogIn() => Container(
        height: 44,
        width: 307,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF3797EF),
        ),
        child: const Center(
          child: Text(
            "Log in",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      );
}
