// https://flutter.io/docs/cookbook/images/fading-in-images

import 'package:flutter/material.dart';

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
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/loading.gif',
          image: 'https://picsum.photos/250?random',
        ),
      ),
    );
  }
}
