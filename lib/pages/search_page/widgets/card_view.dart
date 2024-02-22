import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../modals/itemFavourite.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget({
    required this.itemFavouritese,
    Key? key,
  }) : super(key: key);

  final List<ItemFavourite> itemFavouritese;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: const EdgeInsets.only(top: 9, left: 6, bottom: 8),
          height: 33,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: itemFavouritese
                  .map(
                    (e) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 8, right: 12, left: 12),
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          if (e.image == null)
                            Container()
                          else
                            SvgPicture.asset('${e.image}'),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            e.name,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      );
}
