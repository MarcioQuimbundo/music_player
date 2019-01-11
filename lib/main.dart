import 'package:flutter/material.dart';
import 'package:music_player/theme.dart';

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
                color: Colors.black,
                width: 125.0,
                height: 125.0,
                
              ),
            ),
          ),
          // visualize
          Container(
            width: double.infinity,
            height: 125.0,
          ),
          // song title, artist name, and controls
          Container(
            color: accentColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Container()),
                        IconButton(
                          icon: Icon(Icons.skip_previous),
                          color: Colors.white,
                          iconSize: 36.5,
                          onPressed: () {},
                        ),
                        Expanded(child: Container()),
                        RawMaterialButton(
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          splashColor: lightAccentColor,
                          highlightColor: lightAccentColor.withOpacity(0.5),
                          elevation: 10.0,
                          highlightElevation: 5.0,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.play_arrow,
                              color: darkAccentColor,
                              size: 35.0,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        IconButton(
                          icon: Icon(Icons.skip_next),
                          color: Colors.white,
                          iconSize: 36.5,
                          onPressed: () {},
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
