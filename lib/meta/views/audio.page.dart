import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  final AudioPlayer player = AudioPlayer();

  // initialize the player
  intPlayer() async {
    await player.setAudioSource(
        AudioSource.uri(Uri.parse("https://domain/musics/music.mp3")));
  }

  @override
  void initState() {
    intPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Audio Player Example"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            // check wheather music is playing or not
            if (player.playing) {
              // pause music
              player.pause();
            } else {
              // play music
              player.play();
            }

            
          },
          child: const Icon(Icons.music_note),
        ));
  }
}
