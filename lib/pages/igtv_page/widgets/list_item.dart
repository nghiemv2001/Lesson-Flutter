import 'package:design_ui_instagram/pages/igtv_page/modals/item.dart';
import 'package:flutter/material.dart';

class List_Item extends StatelessWidget {
  const List_Item({required this.dataItem, Key? key}) : super(key: key);
  final List<ItemIGTV> dataItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: GridView.builder(
        reverse: false,
        shrinkWrap: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            mainAxisExtent: 300),
        itemCount: dataItem.length,
        itemBuilder: (context, index) {
          return Container(
            height: 291,
            width: 187,
            child: Stack(
              children: [
                Image.asset(
                  dataItem[index].image,
                  width: 194,
                  height: 298,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 150,
                  top: 10,
                  child: Text(
                    dataItem[index].time,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFEFEFE),
                    ),
                  ),
                ),
                Positioned(
                  top: 221,
                  left: 12,
                  child: Container(
                    width: 163,
                    height: 28,
                    child: Text(
                      dataItem[index].message,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFEFEFE),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 252,
                  left: 12,
                  child: Container(
                    height: 14,
                    width: 163,
                    child: Text(
                      dataItem[index].name,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFEFEFE),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 12,
                  child: Text(
                    "${dataItem[index].view}k views",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFEFEFE),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
