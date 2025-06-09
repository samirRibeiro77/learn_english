import 'package:flutter/material.dart';
import 'package:learn_english/helper/media_helper.dart';

class AnimalsTab extends StatefulWidget {
  const AnimalsTab({super.key});

  @override
  State<AnimalsTab> createState() => _AnimalsTabState();
}

class _AnimalsTabState extends State<AnimalsTab> {
  final _mediaHelper = MediaHelper();

  @override
  void initState() {
    super.initState();

    _mediaHelper.cache = [
      "cao", "gato", "leao", "macaco", "ovelha", "vaca",
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("cao"),
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("gato"),
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("leao"),
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("macaco"),
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("ovelha"),
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("vaca"),
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
