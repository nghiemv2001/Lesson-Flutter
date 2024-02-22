import 'package:design_ui_instagram/lesson10/pages/main_page/modals/item_post.dart';
import 'package:flutter/material.dart';

import 'post_item.dart';

class PostListView extends StatelessWidget {
  const PostListView({
    required this.posts,
    Key? key,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    print(posts.length);
    return ListView.separated(
      itemBuilder: (context, index) {
        return PostItem(
          post: posts[index],
        );
      },
      itemCount: posts.length,
      separatorBuilder: (context, index) {
        return Container(
          height: 16,
          color: Colors.black.withOpacity(0.1),
        );
      },
    );
  }
}
