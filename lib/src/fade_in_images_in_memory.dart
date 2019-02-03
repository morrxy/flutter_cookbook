// https://flutter.io/docs/cookbook/images/fading-in-images

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

final title = 'Fade in images';

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
      body: Stack(
        children: <Widget>[
          Center(child: CircularProgressIndicator()),
          Center(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://picsum.photos/250?random',
            ),
          )
        ],
      ),
    );
  }
}
