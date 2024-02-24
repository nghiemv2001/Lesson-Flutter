import "package:flutter/material.dart";

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBar> {
  var _curentIndex = 0;
  List<Widget> pages = [
    const Icon(
      Icons.call,
      size: 50,
    ),
    const Icon(Icons.camera),
    const Icon(Icons.chat)
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: pages[_curentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedFontSize: 20,
          selectedIconTheme:
              const IconThemeData(color: Colors.amberAccent, size: 40),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'Camera'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          ],
          currentIndex: _curentIndex,
          onTap: (index) {
            setState(() {
              _curentIndex = index;
            });
          },
        ),
      );
}
