import 'package:flutter/material.dart';

class AnimalsTab extends StatefulWidget {
  const AnimalsTab({super.key});

  @override
  State<AnimalsTab> createState() => _AnimalsTabState();
}

class _AnimalsTabState extends State<AnimalsTab> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
