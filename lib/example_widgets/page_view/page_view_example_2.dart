import 'package:flutter/material.dart';

class PageViewExample2App extends StatelessWidget {
  const PageViewExample2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: PageViewExample2(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageViewExample2 extends StatefulWidget {
  const PageViewExample2({Key? key}) : super(key: key);

  @override
  State<PageViewExample2> createState() => _PageViewExample2State();
}

class _PageViewExample2State extends State<PageViewExample2> {
  late PageController _pageController;
  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: images.length,
      pageSnapping: true,
      controller: _pageController,
      onPageChanged: (page) {
        setState(() {
          activePage = page;
        });
      },
      itemBuilder: (context, pagePosition) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Image.network(images[pagePosition], fit: BoxFit.cover),
        );
      },
    );
  }
}
