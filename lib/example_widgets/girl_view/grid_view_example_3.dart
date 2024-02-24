import 'package:flutter/material.dart';

import '../../lesson8/pages/profile_page/widgets/grid_view_item.dart';

class GridViewExample3App extends StatelessWidget {
  const GridViewExample3App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: GridViewExample3(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridViewExample3 extends StatefulWidget {
  const GridViewExample3({Key? key}) : super(key: key);

  @override
  State<GridViewExample3> createState() => _GridViewExample3State();
}

class _GridViewExample3State extends State<GridViewExample3> {
  final List<int> _dataList = List.generate(100, (index) => index + 1);

  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      _loadMoreData();
    }
  }

  Future<void> _loadMoreData() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      var newDataList =
          List<int>.generate(10, (index) => _dataList.length + index + 1);
      setState(() {
        _dataList.addAll(newDataList);
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _scrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 0.5,
        mainAxisExtent: 200,
      ),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      // By default, it uses the ClampingScrollPhysics() for Android and BouncingScrollPhysics() for iOS
      itemBuilder: (BuildContext context, int index) {
        return GridItem(index: index);
      },
      itemCount: _dataList.length,
    );
  }
}
