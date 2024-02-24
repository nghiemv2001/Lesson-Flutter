import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_modal.dart';
import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_post.dart';
import 'package:design_ui_instagram/lesson10/pages/main_page/widgets/list_user.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar.dart';
import 'widgets/post_list_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Item> _listUser = <Item>[
    Item(name: 'Your Story', image: 'Inner Oval.png', status: false),
    Item(name: 'karennne', image: 'Inner Oval (1).png', status: true),
    Item(name: 'zackjohn', image: 'Inner Oval (2).png', status: false),
    Item(name: 'kieron_d', image: 'Inner Oval (3).png', status: false),
    Item(name: 'craig_d', image: 'Inner Oval (4).png', status: false),
    Item(name: 'Your Story', image: 'Inner Oval.png', status: false),
    Item(name: 'karennne', image: 'Inner Oval (1).png', status: true),
    Item(name: 'zackjohn', image: 'Inner Oval (2).png', status: false),
    Item(name: 'kieron_d', image: 'Inner Oval (3).png', status: false),
    Item(name: 'craig_d', image: 'Inner Oval (4).png', status: false),
  ];
  List<Post> posts = <Post>[
    const Post(
      name: 'joshua_l',
      avatar: "assets/images/lesson10/Oval.png",
      address: 'Tokyo, Japan',
      images: [
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: "assets/images/lesson10/Oval1.png",
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: "assets/images/lesson10/Oval.png",
      address: 'Tokyo, Japan',
      images: [
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: "assets/images/lesson10/Oval1.png",
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: "assets/images/lesson10/Oval.png",
      address: 'Tokyo, Japan',
      images: [
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: "assets/images/lesson10/Oval1.png",
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: "assets/images/lesson10/Oval.png",
      address: 'Tokyo, Japan',
      images: [
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: "assets/images/lesson10/Oval1.png",
      ),
      isOfficial: true,
    ),
    const Post(
      name: 'joshua_l',
      avatar: "assets/images/lesson10/Oval.png",
      address: 'Tokyo, Japan',
      images: [
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: "assets/images/lesson10/Oval1.png",
      ),
      isOfficial: true,
    ),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const AppBarMainPage(),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              ListUser(listUser: _listUser),
              PostListView(posts: posts),
            ],
          ),
        ),
      );
}
