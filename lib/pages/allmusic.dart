import 'package:flutter/material.dart';
import 'package:music_player/theme.dart';
class AllMusic extends StatefulWidget {
  @override
  AllMusicState createState() {
    return new AllMusicState();
  }
}

class AllMusicState extends State<AllMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: accentColor,
        title: Text('Todas as músicas', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}