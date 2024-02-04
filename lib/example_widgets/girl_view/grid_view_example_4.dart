import 'package:flutter/material.dart';

import '../../lesson8/pages/profile_page/widgets/grid_view_item.dart';

class GridViewExample4App extends StatelessWidget {
  const GridViewExample4App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: GridViewExample4(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridViewExample4 extends StatefulWidget {
  const GridViewExample4({Key? key}) : super(key: key);

  @override
  State<GridViewExample4> createState() => _GridViewExample4State();
}

class _GridViewExample4State extends State<GridViewExample4> {
  final List<int> _dataList = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      maxCrossAxisExtent: 200,
      // By default, it uses the ClampingScrollPhysics() for Android and BouncingScrollPhysics() for iOS
      children: _dataList.map((e) => GridItem(index: e)).toList(),
    );
  }
}
