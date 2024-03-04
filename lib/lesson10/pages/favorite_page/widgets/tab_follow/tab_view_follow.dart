import 'package:design_ui_instagram/lesson10/pages/favorite_page/modals/item_follow.dart';
import 'package:flutter/material.dart';

class TabViewFollow extends StatefulWidget {
  const TabViewFollow({Key? key}) : super(key: key);

  @override
  State<TabViewFollow> createState() => _TabViewFollowState();
}

class _TabViewFollowState extends State<TabViewFollow> {
  final List<ItemFollow> _datafollow = [
    ItemFollow(
        avatars: ['assets/images/like_page/Image1.jpg'],
        names: ["karennne"],
        content: "karennne liked 3 posts.",
        status: 0,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle.png",
          "assets/images/like_page/Rectangle (1).png",
          "assets/images/like_page/Rectangle (2).png",
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
          "assets/images/like_page/Rectangle (3).png",
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
          "assets/images/like_page/Rectangle (4).png",
        ]),
    ItemFollow(
        avatars: [
          "assets/images/like_page/Image3.jpg",
        ],
        names: [
          "craig_love",
        ],
        content: "craig_love liked 8 posts.",
        status: 0,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle (5).png",
          "assets/images/like_page/Rectangle (6).png",
          "assets/images/like_page/Rectangle (7).png",
          "assets/images/like_page/Rectangle (8).png",
          "assets/images/like_page/Rectangle (9).png",
          "assets/images/like_page/Rectangle (10).png",
          "assets/images/like_page/Rectangle (11).png",
          "assets/images/like_page/Rectangle (12).png",
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
          "assets/images/like_page/Rectangle (13).png",
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
          "assets/images/like_page/Rectangle (14).png",
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
          "assets/images/like_page/Rectangle (15).png",
        ]),
    ItemFollow(
        avatars: ["assets/images/like_page/Image1.jpg"],
        names: ["karennne"],
        content: "karennne liked 3 posts.",
        status: 0,
        isSpecial: false,
        time: "3h",
        images: [
          "assets/images/like_page/Rectangle (16).png",
          "assets/images/like_page/Rectangle (17).png",
          "assets/images/like_page/Rectangle (18).png",
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
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildAvatars(_itemFollow.avatars, _itemFollow.status),
              _buildContent(_itemFollow.content, _itemFollow.status),
            ],
          ),
          (_itemFollow.status == 0) ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 44, width: 44,),
              SizedBox(width: 12,),
              (_itemFollow.images != null && _itemFollow.images!.length > 1)
                  ? _buildImages(_itemFollow.images!)
                  : Container(),
            ],
          ) : Container(),
        ],
      ),
    );
  }

  Widget _buildAvatars(List<String> _avatars, int _status) {
    if (_avatars.length == 1) {
      return Container(
        margin: EdgeInsets.only(right: 12),
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            _avatars[0],
            width: 44,
            height: 44,
            fit: BoxFit.fitWidth,
          ),
        ),
      );
    } else {
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
                    _avatars[1],
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
                    _avatars[0],
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
  }

  Widget _buildContent(String _content, int _status) {
    return Container(
      width: 230,
      height: 16,
      child: Text(_content, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
    );
  }

  Widget _buildImages(List<String> _images) {
    return Container(
      width: 284,
      height: (_images.length <=6 )? 44 : 92,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 6,
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
