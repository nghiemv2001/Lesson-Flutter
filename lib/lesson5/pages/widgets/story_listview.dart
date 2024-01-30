import 'package:design_ui_instagram/lesson5/pages/modals/story.dart';
import 'package:design_ui_instagram/lesson5/pages/widgets/story_item.dart';
import 'package:flutter/material.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({required this.stories, Key? key}) : super(key: key);
  final List<Story> stories;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) {
            return StoryItem(story: stories[index]);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 16,
            );
          },
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          itemCount: stories.length),
    );
  }
}
