import 'package:flutter/material.dart';

void main() {
  runApp(NewsFeedApp());
}

class NewsFeedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsFeedPage(),
    );
  }
}

class NewsFeedPage extends StatelessWidget {
  final int tileCount = 10; // Number of tiles to display

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
            children: List.generate(tileCount, (index) {
              return NewsTile(index: index);
            }),
          );
        },
      ),
    );
  }
}

class NewsTile extends StatelessWidget {
  final int index;

  NewsTile({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          child: Image.asset('images/n.jpg'),
        ),
      ),
    );
  }
}
