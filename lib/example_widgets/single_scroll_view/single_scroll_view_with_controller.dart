import 'package:flutter/material.dart';

class SingScrollViewExample2 extends StatefulWidget {
  const SingScrollViewExample2({Key? key}) : super(key: key);

  @override
  State<SingScrollViewExample2> createState() => _SingScrollViewExample2State();
}

class _SingScrollViewExample2State extends State<SingScrollViewExample2> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.easeInOut);
            },
            child: Text("Scroll view Bottom"),
          ),
          Container(
            height: 500,
            color: Colors.red,
          ),
          Container(
            height: 500,
            color: Colors.green,
          ),
          Container(
            height: 500,
            color: Colors.blue,
          ),
          ElevatedButton(
            onPressed: () {
              _scrollController.position.minScrollExtent;
              _scrollController.animateTo(0,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            },
            child: Text(
              "Scroll to Top",
            ),
          )
        ],
      ),
    );
  }
}
