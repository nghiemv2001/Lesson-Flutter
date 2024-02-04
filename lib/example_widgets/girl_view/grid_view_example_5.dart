import 'package:flutter/material.dart';

import '../../lesson8/pages/profile_page/widgets/grid_view_item.dart';

class GridViewExample5App extends StatelessWidget {
  const GridViewExample5App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: GridViewExample5(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridViewExample5 extends StatefulWidget {
  const GridViewExample5({Key? key}) : super(key: key);

  @override
  State<GridViewExample5> createState() => _GridViewExample5State();
}

class _GridViewExample5State extends State<GridViewExample5> {
  final List<int> _dataList = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return GridItem(index: index);
        },
        childCount: _dataList.length,
      ),
    );
  }
}
