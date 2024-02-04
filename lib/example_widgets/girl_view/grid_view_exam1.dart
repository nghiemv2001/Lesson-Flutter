import 'package:flutter/material.dart';

import '../../lesson8/pages/profile_page/widgets/grid_view_item.dart';

class GridViewExample1App extends StatelessWidget {
  const GridViewExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Demo 1'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: GridViewExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridViewExample1 extends StatefulWidget {
  const GridViewExample1({Key? key}) : super(key: key);

  @override
  State<GridViewExample1> createState() => _GridViewExample1State();
}

class _GridViewExample1State extends State<GridViewExample1> {
  final List<int> _dataList = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 1,
        mainAxisExtent: 200,
      ),
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(),
      // By default, it uses the ClampingScrollPhysics() for Android and BouncingScrollPhysics() for iOS
      children: _dataList.map((e) => GridItem(index: e)).toList(),
    );
  }
}
