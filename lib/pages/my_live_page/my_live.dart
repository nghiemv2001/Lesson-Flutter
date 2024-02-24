import 'package:design_ui_instagram/pages/my_live_page/widgets/column_text.dart';
import 'package:design_ui_instagram/pages/my_live_page/widgets/row_app_bar.dart';
import 'package:design_ui_instagram/pages/my_live_page/widgets/row_bottom.dart';
import 'package:design_ui_instagram/pages/my_live_page/widgets/row_comment.dart';
import 'package:flutter/material.dart';

class MyLive extends StatelessWidget {
  const MyLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 667,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/my_live/Rectangle (1).png",
                    width: 375,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const AppBarRow(),
                const ColumnText(),
                const RowComment(),
                const RowBottom(),
              ],
            ),
          ),
        ),
      );
}
