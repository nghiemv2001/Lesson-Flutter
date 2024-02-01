import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../modals/itemMessage.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({required this.listmessage, Key? key}) : super(key: key);
  final List<ItemMessage> listmessage;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: listmessage.map(
          (e) {
            return Container(
              width: 375,
              height: 72,
              color: Color(0xFFFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (e.status == 1) ? Color(0xFFC7C7CC) : Colors.white,
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
                            "${e.image}",
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${e.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF262626),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 190,
                            height: 15,
                            child: Text(
                              "${e.message}",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF000000).withOpacity(0.4),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 2,
                                width: 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                "${e.timeOn}",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF000000).withOpacity(0.4),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: SvgPicture.asset(
                      "assets/icons/lesson7/Picture.svg",
                      width: 24,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
