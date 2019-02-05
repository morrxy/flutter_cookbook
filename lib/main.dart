import 'package:flutter/material.dart';
import 'src/demo_list.dart' show demoList;

void main() => runApp(MyApp());

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
          itemCount: demoList.length,
          itemBuilder: (context, i) {
            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    demoList[i]['name'],
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
                Divider(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: demoList[i]['list'].length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            demoList[i]['list'][index]['name'],
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return DemoPage(
                                  demoList[i]['list'][index]['makePage']);
                            }));
                          },
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ],
            );
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
