import 'package:design_ui_instagram/lesson10/pages/favorite_page/modals/item_follow.dart';
import 'package:flutter/material.dart';

class TabViewFollow extends StatefulWidget {
  const TabViewFollow({Key? key}) : super(key: key);

  @override
  State<TabViewFollow> createState() => _TabViewFollowState();
}

class _TabViewFollowState extends State<TabViewFollow> {
  List<ItemFollow> _datafollow = [
    ItemFollow(
        avatars: ["assets/images/like_page/Image1.jpg"],
        names: ["karennne"],
        content: "karennne liked 3 posts.",
        status: 0,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg"
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image2.jpg",
          "assets/images/like_page/Image8.jpg",
        ],
        names: [
          "kiero_d, zackjohn",
          "craig_love",
          "joshua_l",
        ],
        content: "kiero_d, zackjohn and craig_love liked joshua_l photo.",
        status: 1,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image2.jpg",
        ],
        names: [
          "kiero_d",
          "craig_love",
        ],
        content: "kiero_d started following craig_love.",
        status: 2,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image2.jpg",
        ],
        names: [
          "craig_love",
        ],
        content: "craig_love liked 8 posts.",
        status: 0,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image2.jpg",
          "assets/images/like_page/Image8.jpg",
        ],
        names: [
          "maxjacobson",
          "zackjohn",
          "mis_potter’s",
        ],
        content: "maxjacobson and zackjohn liked mis_potter’s post.",
        status: 1,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image2.jpg",
        ],
        names: [
          "maxjacobson",
          "zackjohn",
          "mis_potter’s",
        ],
        content: "maxjacobson and craig_love liked martini_rond’s post.",
        status: 1,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image2.jpg",
          "assets/images/like_page/Image8.jpg",
        ],
        names: [
          "maxjacobson",
          "zackjohn",
          "mis_potter’s",
        ],
        content: "karennne liked martini_rond’s comment: @martini_rond Nice!",
        status: 1,
        isSpecial: true,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
        ]),
    ItemFollow(
        avatars: ["assets/images/like_page/Image1.jpg"],
        names: ["karennne"],
        content: "karennne liked 3 posts.",
        status: 0,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg",
          "assets/images/like_page/Rectangle.jpg"
        ]),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _datafollow.map(
        (e) {
          return _buildItemListView(e);
        },
      ).toList(),
    );
  }

  Widget _buildItemListView(ItemFollow _itemFollow) {
    return Row(
      children: [
        _buildAvatars(_itemFollow.avatars, _itemFollow.status),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContent(_itemFollow.content, _itemFollow.status),
            (_itemFollow.images != null && _itemFollow.images!.length > 1)
                ? _buildImages(_itemFollow.images!)
                : Container(),
          ],
        )
      ],
    );
  }

  Widget _buildAvatars(List<String> _avatars, int _status) {
    if (_avatars.length == 1)
      return Container(
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            "${_avatars![0]}",
            width: 44,
            height: 44,
            fit: BoxFit.fitWidth,
          ),
        ),
      );
    else
      return Container(
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "${_avatars?[1]}",
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "${_avatars![0]}",
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

  Widget _buildContent(String _content, int _status) {
    return Container(
      width: 230,
      height: 16,
      color: Colors.blue,
    );
  }

  Widget _buildImages(List<String> _images) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 200,
      height: 44,
      color: Colors.red,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (_images.length < 8) ? _images.length : 8,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
        ),
        itemCount: _images.length,
        itemBuilder: (context, index) => GridTile(
          child: Image.asset(
            _images[index],
            width: 44,
            height: 44,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
