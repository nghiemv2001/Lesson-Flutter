import 'package:design_ui_instagram/lesson6/widgets/login_page/app_bar.dart';
import 'package:design_ui_instagram/lesson6/widgets/login_page/bottom_bar.dart';
import 'package:design_ui_instagram/lesson6/widgets/login_page/text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const AppBarLoginPage(),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 80,
                  ),
                  SvgPicture.asset('assets/icons/lesson6/Instagram Logo.svg'),
                  const SizedBox(
                    height: 39,
                  ),
                  const ContainTextFormFiled(),
                  const SizedBox(
                    height: 41,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 1,
                        width: 132,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 132,
                        color: Colors.black.withOpacity(0.2),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don’t have an account?",
                        style: TextStyle(
                            color: const Color(0xFF000000).withOpacity(0.4),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Sign up.",
                            style: TextStyle(
                                color: Color(0xFF3797EF),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomBarLoginPage(),
      );
}
