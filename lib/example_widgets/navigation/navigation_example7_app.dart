import 'package:flutter/material.dart';

class NavigationExample7App extends StatelessWidget {
  const NavigationExample7App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FirstScreen.routeName,
      onGenerateRoute: (settings) {
        if (settings.name == FirstScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return FirstScreen(
                data: settings.arguments as String?,
              );
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

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    required this.data,
    super.key,
  });

  static const routeName = '/first';

  final String? data;

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
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SecondScreen.routeName,
                  arguments: 'Data 2 (Sent from first screen)',
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
                Navigator.pushReplacementNamed(
                  context,
                  ThirdScreen.routeName,
                  arguments: 'Data 3 (Sent from second screen)',
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
