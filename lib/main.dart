import 'dart:math';

import 'package:flutter/material.dart';
import 'package:music_player/bottom_controls.dart';
import 'package:music_player/theme.dart';
import 'package:music_player/songs.dart';

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
          Expanded(
            child: Center(
              child: Container(
                width: 125.0,
                height: 125.0,
                child: ClipOval(
                  clipper: CircleClipper(),
                  child: Image.network(
                    demoPlaylist.songs[0].albumArtUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          // visualizer
          Container(
            width: double.infinity,
            height: 125.0,
          ),
          // song title, artist name, and controls
          new BottomControls(),
        ],
      ),
    );
  }
}
