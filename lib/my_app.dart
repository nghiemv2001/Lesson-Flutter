import 'package:flutter/material.dart';

import 'lesson10/instagram_pages.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InstagramPages(),
      );
}
