// https://flutter.io/docs/cookbook/lists/long-lists

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final title = 'Long List';

Page makePage() {
  return Page(
    items: List<String>.generate(10000, (i) => "Item $i"),
  );
}

class Page extends StatelessWidget {
  final List<String> items;

  Page({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
