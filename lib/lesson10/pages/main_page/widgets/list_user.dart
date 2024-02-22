import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_modal.dart';
import 'package:flutter/material.dart';

class ListUser extends StatelessWidget {
  const ListUser({required this.listUser, Key? key}) : super(key: key);
  final List<Item> listUser;
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Colors.black26.withOpacity(0.1),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 9, bottom: 8, left: 10),
            child: Row(
              children: listUser
                  .map(
                    (e) => Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 62,
                                width: 62,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0xFFFBC147),
                                        Color(0xFFD91A46),
                                        Color(0xFFA60F93)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                    ),
                                    borderRadius: BorderRadius.circular(60)),
                                child: Center(
                                  child: Container(
                                    height: 56,
                                    width: 56,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            'assets/images/lesson10/${e.image}',
                                            fit: BoxFit.cover,
                                            width: 56,
                                            height: 56,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (e.status)
                                Center(
                                  child: Container(
                                    height: 16,
                                    width: 26,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "LIVE",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 8),
                                      ),
                                    ),
                                  ),
                                )
                              else
                                Center(
                                    child: Container(
                                  height: 0,
                                  width: 0,
                                ))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Text(
                            e.name,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      );
}
