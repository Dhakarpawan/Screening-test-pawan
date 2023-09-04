import 'package:flutter/material.dart';

class Item {
  final String name;
  final String description;

  Item({required this.name, required this.description});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Item> dummyItems = [
    Item(name: 'Item 1', description: 'Description 1'),
    Item(name: 'Item 2', description: 'Description 2'),
    Item(name: 'Item 3', description: 'Description 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Item List App'),
        ),
        body: ItemList(items: dummyItems),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<Item> items;

  ItemList({required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.description),
        );
      },
    );
  }
}
