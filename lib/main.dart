import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapExampleScreen(),
    );
  }
}

class MapExampleScreen extends StatelessWidget {
  // Define a list of numbers
  final List<int> numbers = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Function Example'),
      ),
      body: ListView(
        children: numbers
            .map((number) => ListTile(
                  title: Text('Number: $number'),
                  leading: Icon(Icons.format_list_numbered),
                ))
            .toList(),
      ),
    );
  }
}
