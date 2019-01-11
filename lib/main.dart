import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _HomeState();
    }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
      ),
      body: Center(),
    );
  }
}