import 'package:design_ui_instagram/lesson5/pages/modals/story.dart';
import 'package:design_ui_instagram/lesson5/pages/widgets/avatar_item.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key, required this.story}) : super(key: key);
  final Story story;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AvatarItem(
          avater: story.avatar,
          isLive: story.isLive,
        ),
        Text(
          story.name,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
