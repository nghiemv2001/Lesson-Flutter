import 'package:flutter/material.dart';

class PageViewExample1App extends StatelessWidget {
  const PageViewExample1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: PageViewExample1(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageViewExample1 extends StatefulWidget {
  const PageViewExample1({Key? key}) : super(key: key);

  @override
  State<PageViewExample1> createState() => _PageViewExample1State();
}

class _PageViewExample1State extends State<PageViewExample1> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      pageSnapping: true,
      onPageChanged: (int page) {
        setState(() {
          _currentPage = page;
        });
      },
      children: [
        Container(
          color: Colors.red,
          child: const Center(
            child: Text('Page 1'),
          ),
        ),
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text('Page 2'),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Center(
            child: Text('Page 3'),
          ),
        ),
      ],
    );
  }
}
