import 'package:flutter/material.dart';

class Button_Example extends StatefulWidget {
  const Button_Example({Key? key}) : super(key: key);

  @override
  State<Button_Example> createState() => _Button_ExampleState();
}

class _Button_ExampleState extends State<Button_Example> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Button"),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  onLongPress: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Nhấn vào đây'),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue,
                    textStyle: const TextStyle(
                      fontSize: 16, // Kích thước chữ
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Nhấn vào đây'),
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.blue),
                  ),
                  child: const Text('Nhấn vào đây'),
                ),
                const SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    // Hành động khi người dùng chạm vào Widget
                  },
                  onDoubleTap: () {
                    // Hành động khi người dùng nhấp đúp vào Widget
                  },
                  onLongPress: () {
                    // Hành động khi người dùng nhấn giữ trên Widget
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.green,
                    child: const Center(
                      child: Text('Nhấn vào đây'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Material(
                  color: Colors.yellow,
                  child: InkWell(
                    onTap: () {
                      // Hành động khi người dùng chạm vào Widget
                    },
                    child: const SizedBox(
                      width: 200,
                      height: 200,
                      child: Center(
                        child: Text('Nhấn vào đây'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
