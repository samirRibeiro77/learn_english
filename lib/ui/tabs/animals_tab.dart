import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AnimalsTab extends StatefulWidget {
  const AnimalsTab({super.key});

  @override
  State<AnimalsTab> createState() => _AnimalsTabState();
}

class _AnimalsTabState extends State<AnimalsTab> {
  final _audioPlayer = AudioPlayer();

  _playAudio(String path){
    var source = AssetSource("audios/$path.mp3");
    _audioPlayer.play(source);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () => _playAudio("cao"),
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () => _playAudio("gato"),
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () => _playAudio("leao"),
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () => _playAudio("macaco"),
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () => _playAudio("ovelha"),
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () => _playAudio("vaca"),
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
