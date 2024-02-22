import 'package:design_ui_instagram/pages/like_page/modals/itemNotification.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/item_notification.dart';
import 'package:flutter/material.dart';

class ListViewNotificationToday extends StatelessWidget {
  const ListViewNotificationToday({required this.notifications, Key? key})
      : super(key: key);
  final List<ItemNotification> notifications;
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(left: 5),
        height: 106,
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 14,
                bottom: 14,
              ),
              child: Text(
                "Today",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF262626),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (contex, index) =>
                      (notifications[index].time.day == 8 &&
                              notifications[index].time.month == 2 &&
                              notifications[index].time.year == 2024)
                          ? ItemNotificationWidget(
                              itemNotification: notifications[index])
                          : Container(),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                        width: 16,
                      ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  itemCount: notifications.length),
            ),
          ],
        ),
      );
}
