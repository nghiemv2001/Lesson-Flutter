import 'package:design_ui_instagram/pages/live_page/widgets/content.dart';
import 'package:flutter/material.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SafeArea(
        child: Scaffold(
          body: ContentPageLive(),
        ),
      );
}
