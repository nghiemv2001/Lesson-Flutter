import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  // Replace the following with your logic to fetch and combine API data
  List<String> allApiData = [
    'New API 1',
    'New API 2',
    'New API 3',
    'Today API 1',
    'Today API 2',
    'Today API 3',
    'This Week API 1',
    'This Week API 2',
    'This Week API 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API List'),
      ),
      body: ApiList(apiData: allApiData),
    );
  }
}

class ApiList extends StatelessWidget {
  final List<String> apiData;

  ApiList({required this.apiData});

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: apiData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(apiData[index]),
            // Add other details or actions as needed
          );
        },
      );
}
