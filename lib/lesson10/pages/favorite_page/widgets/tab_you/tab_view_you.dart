import 'package:design_ui_instagram/lesson10/pages/favorite_page/modals/item_you.dart';
import 'package:design_ui_instagram/pages/like_page/widgets/follow_required.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabViewYou extends StatefulWidget {
  const TabViewYou({required this.tabController, Key? key}) : super(key: key);
  final TabController tabController;
  @override
  State<TabViewYou> createState() => _TabViewYouState();
}

class _TabViewYouState extends State<TabViewYou> {
  final Map<String, List<ItemYou>> _dataItemYou = {
    'New': <ItemYou>[
      ItemYou(
          avatars: ["assets/images/like_page/Image1.jpg"],
          name: "karennne",
          content: "liked your photo.",
          time: "1h",
          images: ["assets/images/like_page/Rectangle.jpg"],
          status: 0,
          reply: false),
    ],
    'Today': <ItemYou>[
      ItemYou(
          name: "kiero_d zackjohn",
          content: "and 26 others liked your photo.",
          time: "3h",
          images: ["assets/images/like_page/Rectangle1.jpg"],
          avatars: [
            "assets/images/like_page/Image2.jpg",
            "assets/images/like_page/Image8.jpg",
          ],
          status: 0,
          reply: false),
    ],
    'This Week': [
      ItemYou(
          name: "craig_love",
          content: 'mentioned you in a comment: @jacob_w exactly..',
          time: "2h",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: ["assets/images/like_page/Image3.jpg"],
          status: 0,
          reply: true),
      ItemYou(
          name: "martini_rond",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image4.jpg",
          ],
          status: 1,
          reply: false),
      ItemYou(
          name: "maxjacobson",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image5.jpg",
          ],
          status: 1,
          reply: false),
      ItemYou(
          name: "mis_potter",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image6.jpg",
          ],
          status: 2,
          reply: false),
      ItemYou(
          name: "craig_love",
          content: 'mentioned you in a comment: @jacob_w exactly..',
          time: "2h",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: ["assets/images/like_page/Image3.jpg"],
          status: 0,
          reply: true),
      ItemYou(
          name: "martini_rond",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image4.jpg",
          ],
          status: 1,
          reply: false),
      ItemYou(
          name: "maxjacobson",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image5.jpg",
          ],
          status: 1,
          reply: false),
      ItemYou(
          name: "mis_potter",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image6.jpg",
          ],
          status: 2,
          reply: false),
    ],
    'This Month': [
      ItemYou(
          name: "maxjacobson",
          content: "started following you.",
          time: "3d",
          images: ["assets/images/like_page/Rectangle2.jpg"],
          avatars: [
            "assets/images/like_page/Image5.jpg",
          ],
          status: 2,
          reply: false),
    ],
  };
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FollowRequired(),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: _dataItemYou.length,
              itemBuilder: (BuildContext context, int index) {
                final _key = _dataItemYou.keys.elementAt(index);
                final _items = _dataItemYou[_key] ?? [];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildHeader(_key),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: _items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _biuldItemYou(_items[index]);
                      },
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader(String _title) {
    return Container(
      padding: const EdgeInsets.only(left: 16, bottom: 13, top: 13),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Text(
        _title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Color(0xFF262626),
        ),
      ),
    );
  }

  Widget _biuldItemYou(ItemYou _itemYou) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildAvatar(_itemYou.avatars),
          _buildNameAndContent(_itemYou.name, _itemYou.content, _itemYou.status,
              _itemYou.time, _itemYou.reply),
          _buildImages(_itemYou.images, _itemYou.status)
        ],
      ),
    );
  }

  Widget _buildAvatar(List<String> _avatars) {
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

  Widget _buildNameAndContent(
      String _name, String _content, int _status, String _time, bool _reply) {
    return Column(
      children: [
        Container(
          width: 210,
          padding:
              (_status == 1) ? EdgeInsets.only(right: 70) : EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: "${_name} ",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "${_content} ${_time}",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              if (_reply == true)
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/like_page/IconSmall.svg",
                        width: 12,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "Reply",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFF000000).withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImages(List<String>? _images, int _status) {
    if (_status == 0) {
      return Row(
        children: [
          SizedBox(
            width: 46,
          ),
          Image.asset(
            "${_images![0]}",
            width: 44,
            height: 44,
            fit: BoxFit.cover,
          ),
        ],
      );
    } else if (_status == 1) {
      return Container(
        width: 90,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: const Center(
          child: Text(
            "Message",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      );
    } else {
      return Container(
        width: 90,
        height: 28,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: const Center(
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      );
    }
  }
}
