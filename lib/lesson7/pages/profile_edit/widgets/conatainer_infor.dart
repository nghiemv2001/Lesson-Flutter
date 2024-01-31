import 'package:flutter/material.dart';

class Container_Infor extends StatelessWidget {
  const Container_Infor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 208,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(width: 0.5, color: Colors.grey.shade400),
        ),
      ),
      child: Column(
        children: <Widget>[
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
                    "Name",
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
                              "Jacob West",
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
                    "Username",
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
                              "jacob_w",
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
                    "Website",
                    style: TextStyle(
                      fontSize: 16,
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
                      Padding(
                        padding: EdgeInsets.only(left: 16, top: 14, bottom: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Website",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF3C3C43).withOpacity(0.3)),
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
                    "Bio",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF262626),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 279,
                height: 48,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    top: 15,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: const [
                        TextSpan(
                          text: 'Digital goodies designer ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF262626),
                          ),
                        ),
                        TextSpan(
                          text: '@pixsellz ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF05386B),
                          ),
                        ),
                        TextSpan(
                          text: 'Everything is designed.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF262626),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
