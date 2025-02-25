import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class LocalAudio extends StatefulWidget {
  const LocalAudio({super.key});

  @override
  State<LocalAudio> createState() => _LocalAudioState();
}

class _LocalAudioState extends State<LocalAudio> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void dispose(){
    audioPlayer.dispose();
    super.dispose();
  }

  void playAudio() async{
    await audioPlayer.play(AssetSource('audio/sound.mp3'));
  }

  void stopAudio() async{
    await audioPlayer.stop();
  }
  
  void playAudioOnline() async{
    await audioPlayer.play(UrlSource('https://raw.githubusercontent.com/Flutter-Tutorial-Website/SimpleFlutterAudioPlayer/master/assets/audio/sound.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Audio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: playAudio, child: Text('Play Audio')),
            ElevatedButton(onPressed: stopAudio, child: Text('Stop Audio')),
            ElevatedButton(onPressed: playAudioOnline, child: Text('Play Audio Online')),
          ],
        ),
      ),
    );
  }
}
