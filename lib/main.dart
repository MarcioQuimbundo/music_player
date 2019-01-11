import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: const Color(0xFFDDDDDD),
          onPressed: () {},
        ),
        title: Text(''),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: const Color(0xFFDDDDDD),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          //seek bar

          // visualize
          Container(
            width: double.infinity,
            height: 125.0,
          ),
          // song title, artist name, and controls
          Container(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: '',
                    children: [
                      TextSpan(
                        text: 'Song Title\n',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4.0,
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: 'Artist Name',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 12.0,
                          letterSpacing: 3.0,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
