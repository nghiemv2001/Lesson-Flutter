import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_modal.dart';
import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_post.dart';
import 'package:design_ui_instagram/lesson10/pages/main_page/widgets/list_user.dart';
import 'package:design_ui_instagram/lesson10/pages/main_page/widgets/post_list_view.dart';
import 'package:flutter/material.dart';

class BodyMainPage extends StatefulWidget {
  const BodyMainPage({Key? key}) : super(key: key);

  @override
  State<BodyMainPage> createState() => _BodyMainPageState();
}

class _BodyMainPageState extends State<BodyMainPage> {
  final List<Item> _listUser = [
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
  List<Post> posts = [
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
      avatar: 'assets/images/lesson10/avatar2.png',
      images: [
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/lesson10/avatar4.png',
      ),
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
      avatar: 'assets/images/lesson10/avatar2.png',
      images: [
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/lesson10/avatar4.png',
      ),
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
      avatar: 'assets/images/lesson10/avatar2.png',
      images: [
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
      ],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/lesson10/avatar4.png',
      ),
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
      avatar: 'assets/images/lesson10/avatar2.png',
      images: [
        "assets/images/lesson10/place (2).jpg",
        "assets/images/lesson10/place (1).jpg",
        "assets/images/lesson10/Rectangle.png",
        "assets/images/lesson10/place (1).jpg",
      ],
      address: 'Tokyo, Japan',
      comment: 'The game in Japan was amazing and I want to share some photos',
      totalLike: 44686,
      like: Like(
        name: 'craig_love',
        avatar: 'assets/images/lesson10/avatar4.png',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) => SafeArea(
        child: SafeArea(
          child: Column(
            children: [
              ListUser(listUser: _listUser),
              Expanded(
                child: PostListView(posts: posts),
              ),
            ],
          ),
        ),
      );
}
