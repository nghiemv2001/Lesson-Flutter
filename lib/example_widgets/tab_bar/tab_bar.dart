import 'package:flutter/material.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({Key? key}) : super(key: key);

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 5,
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.amber,
                border: Border.all(width: 1)),
            tabs: [
              Tab(icon: Icon(Icons.call)),
              Tab(icon: Icon(Icons.camera)),
              Tab(icon: Icon(Icons.chat_bubble)),
              Tab(icon: Icon(Icons.call_end)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.mark_unread_chat_alt)),
              Tab(icon: Icon(Icons.call_end_outlined)),
              Tab(icon: Icon(Icons.camera_alt_outlined)),
              Tab(icon: Icon(Icons.chat_bubble_outline)),
              Tab(icon: Icon(Icons.call_end_outlined)),
              Tab(icon: Icon(Icons.camera_alt_outlined)),
              Tab(icon: Icon(Icons.mark_unread_chat_alt_outlined))
            ],
          ),
          title: Text("Tab Bar demo"),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.call),
            Icon(Icons.camera),
            Icon(Icons.chat_bubble),
            Icon(Icons.call_end),
            Icon(Icons.camera_alt),
            Icon(Icons.mark_unread_chat_alt),
            Icon(Icons.call_end_outlined),
            Icon(Icons.camera_alt_outlined),
            Icon(Icons.mark_unread_chat_alt_outlined),
            Icon(Icons.call_end_outlined),
            Icon(Icons.camera_alt_outlined),
            Icon(Icons.mark_unread_chat_alt_outlined)
          ],
        ),
      ),
    );
  }
}
