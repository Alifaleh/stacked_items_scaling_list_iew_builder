import 'package:flutter/material.dart';

import 'list_item.dart';

import 'stacked_items_scaling_list_iew_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MianScaffold(),
    );
  }
}

class MianScaffold extends StatelessWidget {
  MianScaffold({
    Key key,
  }) : super(key: key);

  final List<ListItem> scrollableItems = [
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
    ListItem(key: UniqueKey()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Text'),
      ),
      body: Column(
        children: [
          StackedItemsScalingListViewBuilder(
            children: scrollableItems,
            itemsHeight: 100,
          ),
        ],
      ),
    );
  }
}
