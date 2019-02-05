// https://flutter.io/docs/cookbook/gestures/handling-taps

import 'package:flutter/material.dart';

final title = 'Gesture Demo';

Page makePage() => Page(title: title);

class Page extends StatelessWidget {
  final String title;

  Page({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('tap'),
        ));
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text('My Button'),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
