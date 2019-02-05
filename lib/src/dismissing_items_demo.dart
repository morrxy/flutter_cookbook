// https://flutter.io/docs/cookbook/gestures/dismissible

import 'package:flutter/material.dart';

final title = 'Dismissing Items';

Page makePage() => Page();

class Page extends StatefulWidget {
  Page({Key key}) : super(key: key);

  @override
  PageState createState() {
    return PageState();
  }
}

class PageState extends State<Page> {
  final items = List<String>.generate(3, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            background: Container(color: Colors.red),
            child: ListTile(title: Text('$item')),
          );
        },
      ),
    );
  }
}
