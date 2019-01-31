import 'package:flutter/material.dart';
import 'src/demo_list.dart' show demoList;

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Cookbook'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, i) {
            if (i < demoList.length) {
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      demoList[i]['name'],
                    ),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return DemoPage(demoList[i]['makePage']);
                      }));
                    },
                  ),
                  Divider()
                ],
              );
            }
          },
        ));
  }
}

class DemoPage extends StatelessWidget {
  final Function makePage;

  DemoPage(this.makePage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.makePage(),
    );
  }
}
