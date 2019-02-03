// https://flutter.io/docs/cookbook/images/cached-images

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

final title = 'Cached Images';

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
          child: CachedNetworkImage(
        placeholder: CircularProgressIndicator(),
        imageUrl: 'https://picsum.photos/250?random',
      )),
    );
  }
}
