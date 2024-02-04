import 'package:design_ui_instagram/example_widgets/single_scroll_view/single_scroll_view_with_loading.dart';
import 'package:flutter/material.dart';

class Single_Scroll_View extends StatefulWidget {
  const Single_Scroll_View({Key? key}) : super(key: key);

  @override
  State<Single_Scroll_View> createState() => _Single_Scroll_ViewState();
}

class _Single_Scroll_ViewState extends State<Single_Scroll_View> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Single Scroll View"),
        ),
        body: SafeArea(child: SingleChildScrollViewExample3()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SingleScrollViewExample1 extends StatelessWidget {
  const SingleScrollViewExample1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: false,
      child: Column(
        children: <Widget>[
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
        ],
      ),
    );
  }
}

class SingleChildScrollViewExample3App extends StatelessWidget {
  const SingleChildScrollViewExample3App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView Demo'),
        ),
        backgroundColor: Colors.white,
        body: const SafeArea(
          child: SingleChildScrollViewExample3(),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
