import 'package:flutter/material.dart';

import '../../lesson8/pages/profile_page/widgets/grid_view_item.dart';

class GridViewExample2App extends StatelessWidget {
  const GridViewExample2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: GridViewExample2(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridViewExample2 extends StatefulWidget {
  const GridViewExample2({Key? key}) : super(key: key);

  @override
  State<GridViewExample2> createState() => _GridViewExample2State();
}

class _GridViewExample2State extends State<GridViewExample2> {
  final List<int> _dataList = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      // By default, it uses the ClampingScrollPhysics() for Android and BouncingScrollPhysics() for iOS
      crossAxisCount: 3,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      childAspectRatio: 0.5,
      children: _dataList.map((e) => GridItem(index: e)).toList(),
    );
  }
}
