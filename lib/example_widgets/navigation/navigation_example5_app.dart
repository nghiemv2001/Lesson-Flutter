import 'package:flutter/material.dart';

class NavigationExample5App extends StatelessWidget {
  const NavigationExample5App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(
        data: 'Data 1',
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    required this.data,
    super.key,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          Center(
            child: ElevatedButton(
              child: const Text('Open screen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(
                      data: 'Data 2 (Sent from first screen)',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    required this.data,
    super.key,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(
                      data: 'Data 3 (Sent from second screen)',
                    ),
                  ),
                );
              },
              child: const Text('Open screen'),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({
    required this.data,
    super.key,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}
