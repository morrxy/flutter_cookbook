import 'package:flutter/material.dart';
import 'src/demo_list.dart' show demoList;

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoList(),
    );
  }
}

class DemoList extends StatefulWidget {
  @override
  DemoListState createState() => new DemoListState();
}

class DemoListState extends State<DemoList> {
  static TextStyle bold24Roboto = TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontWeight: FontWeight.w900,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Cookbook'),
      ),
      body: _buildDemoList(),
    );
  }

  Widget _buildDemoList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i < demoList.length) {
          return _buildRow(demoList[i]);
        }
      },
    );
  }

  Widget _buildRow(item) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            item['name'],
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Demo(item['name'], item['makePage']);
            }));
          },
        ),
        Divider()
      ],
    );
  }
}

class Demo extends StatelessWidget {
  final String title;
  final Function makePage;

  Demo(this.title, this.makePage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(this.title)),
      body: this.makePage(),
    );
  }
}
