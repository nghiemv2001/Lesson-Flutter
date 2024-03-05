import 'package:flutter/material.dart';

class NavigationExample8App extends StatelessWidget {
  const NavigationExample8App({Key? key}) : super(key: key);

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
                final result = await Navigator.pushNamed(
                  context,
                  SecondScreen.routeName,
                  arguments: 'Data 2 (Sent from first screen)',
                ) as String?;
                setState(() {
                  data = result;
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
                Navigator.of(context).pop(
                  'Data 1 (Sent from second screen)',
                );
              },
              child: const Text('Go back!'),
            ),
          ),
        ],
      ),
    );
  }
}
