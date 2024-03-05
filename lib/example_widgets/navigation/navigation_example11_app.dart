import 'package:flutter/material.dart';

class NavigationExample11App extends StatelessWidget {
  const NavigationExample11App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FirstScreen.routeName,
      onGenerateRoute: (settings) {
        if (settings.name == FirstScreen.routeName) {
          return MaterialPageRoute(
            settings: const RouteSettings(
              name: FirstScreen.routeName,
            ),
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
            settings: const RouteSettings(
              name: SecondScreen.routeName,
            ),
          );
        } else if (settings.name == ThirdScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return ThirdScreen(
                data: settings.arguments as String,
              );
            },
            settings: const RouteSettings(
              name: SecondScreen.routeName,
            ),
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
                Navigator.pushNamed(
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
                // Navigator.popUntil(
                //   context,
                //   (route) => route.isFirst,
                // );
                // Navigator.popUntil(
                //   context,
                //   ModalRoute.withName(FirstScreen.routeName),
                // );
                Navigator.popUntil(
                  context,
                  (route) {
                    return route.settings.name == FirstScreen.routeName;
                  },
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
