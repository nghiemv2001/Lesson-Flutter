import 'package:design_ui_instagram/lesson5/pages/modals/story.dart';
import 'package:design_ui_instagram/lesson5/pages/widgets/home_app_bar.dart';
import 'package:design_ui_instagram/lesson5/pages/widgets/story_listview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Story> stories = <Story>[
    const Story(name: 'Your Story', avatar: 'assets/images/avatar.png'),
    const Story(
      name: 'karennne',
      avatar: 'assets/images/avatar1.png',
      isLive: true,
    ),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
    const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
    const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
    const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
    const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const HomeAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              StoryListView(
                stories: stories,
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      );
}
