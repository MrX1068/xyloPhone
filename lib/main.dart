import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void getMusic(String audioNames) {
    final audioPlayer = AudioCache();
    audioPlayer.play("$audioNames");
  }

  Expanded musicButtons({Color color, String songNames}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          getMusic(songNames);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          shadowColor: Colors.black87,
          title: Text(
            'Music Keyboards',
            style: TextStyle(
              color: Colors.cyanAccent,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.music_note,
                color: Colors.pink,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                musicButtons(color: Colors.red, songNames: "note1.wav"),
                musicButtons(color: Colors.orange, songNames: "note2.wav"),
                musicButtons(color: Colors.blue, songNames: "note3.wav"),
                musicButtons(color: Colors.teal, songNames: "note4.wav"),
                musicButtons(color: Colors.black, songNames: "note5.wav"),
                musicButtons(color: Colors.cyanAccent, songNames: "note6.wav"),
                musicButtons(
                    color: Colors.yellowAccent, songNames: "note7.wav"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
