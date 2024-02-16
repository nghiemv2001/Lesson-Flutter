import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../modals/itemFavourite.dart';

class Card_View_Widget extends StatelessWidget {
  const Card_View_Widget({
    required this.itemFavouritese,
    Key? key,
  }) : super(key: key);

  final List<ItemFavourite> itemFavouritese;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.only(top: 9, left: 6, bottom: 8),
        height: 33,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: itemFavouritese
                .map((e) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 6),
                      padding: EdgeInsets.only(
                          top: 8, bottom: 8, right: 12, left: 12),
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          (e.image == null)
                              ? Container()
                              : SvgPicture.asset('${e.image}'),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            e.name,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
