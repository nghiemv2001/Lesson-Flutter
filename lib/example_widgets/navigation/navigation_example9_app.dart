import 'dart:async';

import 'package:flutter/material.dart';

class NavigationExample9App extends StatelessWidget {
  const NavigationExample9App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FirstScreen.routeName,
      onGenerateRoute: (settings) {
        if (settings.name == FirstScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return const FirstScreen();
            },
          );
        } else if (settings.name == SecondScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return SecondScreen(
                data: settings.arguments as String,
              );
            },
          );
        } else if (settings.name == ThirdScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return ThirdScreen(
                data: settings.arguments as String,
              );
            },
          );
        } else {
          return null;
        }
      },
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  static const routeName = '/first';

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data ?? ''),
          Center(
            child: ElevatedButton(
              child: const Text('Open screen'),
              onPressed: () async {
                final response = await Navigator.pushNamed(
                  context,
                  SecondScreen.routeName,
                  arguments: 'Data 2 (Sent from first screen)',
                ) as String?;
                setState(() {
                  data = response;
                });
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

  static const routeName = '/second';

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
                final completer = Completer();
                final result = Navigator.pushReplacementNamed(
                  context,
                  ThirdScreen.routeName,
                  result: completer.future,
                  arguments: 'Data 3 (Sent from second screen)',
                );
                completer.complete(result);
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

  static const routeName = '/third';

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
                Navigator.pop(context, 'Data 1 (Sent from third screen)');
              },
              child: const Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}
