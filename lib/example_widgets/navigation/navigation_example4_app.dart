import 'package:flutter/material.dart';

class NavigationExample4App extends StatelessWidget {
  const NavigationExample4App({Key? key}) : super(key: key);

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
              return const SecondScreen();
            },
          );
        } else if (settings.name == ThirdScreen.routeName) {
          return MaterialPageRoute(
            builder: (context) {
              return const ThirdScreen();
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
  const FirstScreen({super.key});

  static const routeName = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  static const routeName = '/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/third');
          },
          child: const Text('Open screen'),
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  static const routeName = '/third';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
