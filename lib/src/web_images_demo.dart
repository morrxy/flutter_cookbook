// https://flutter.io/docs/cookbook/images/network-image

import 'package:flutter/material.dart';

final title = 'Web Images';

Page makePage() {
  return Page();
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Image.network('https://picsum.photos/250?random'),
        ));
  }
}
