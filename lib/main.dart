import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SetExampleScreen(),
    );
  }
}

class SetExampleScreen extends StatefulWidget {
  @override
  _SetExampleScreenState createState() => _SetExampleScreenState();
}

class _SetExampleScreenState extends State<SetExampleScreen> {
  // Define a Set to hold unique items
  Set<String> items = {'Apple', 'Banana', 'Orange', 'Mango'};

  // Method to add a new item and avoid duplicates
  void addItem(String item) {
    setState(() {
      items.add(item); // If the item already exists, it won’t be added again
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Set Example')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: items
                  .map((item) => ListTile(
                        title: Text(item),
                      ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                addItem('Apple'); // Attempting to add a duplicate item
              },
              child: Text('Add "Apple"'),
            ),
          ),
        ],
      ),
    );
  }
}
