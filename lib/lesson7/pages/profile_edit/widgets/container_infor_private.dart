import 'package:flutter/material.dart';

class Infor_Private_Container extends StatelessWidget {
  const Infor_Private_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 241,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16, bottom: 15),
            child: Text(
              "Switch to Professional Account",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(
                  0xFF3897F0,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 14, bottom: 14),
            child: Text(
              "Private Information",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 96,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 15,
                  ),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF262626),
                    ),
                  ),
                ),
              ),
              Container(
                  width: 279,
                  height: 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 14, bottom: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "jacob.west@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF262626),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Container(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 96,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 15,
                  ),
                  child: Text(
                    "Phone",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF262626),
                    ),
                  ),
                ),
              ),
              Container(
                  width: 279,
                  height: 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 14, bottom: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "+1 202 555 0147",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF262626),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Container(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 96,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 15,
                  ),
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF262626),
                    ),
                  ),
                ),
              ),
              Container(
                  width: 279,
                  height: 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 16, top: 14, bottom: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF262626),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Container(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
