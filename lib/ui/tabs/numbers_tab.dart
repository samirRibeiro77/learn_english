import 'package:flutter/material.dart';
import 'package:learn_english/helper/media_helper.dart';

class NumbersTab extends StatefulWidget {
  const NumbersTab({super.key});

  @override
  State<NumbersTab> createState() => _NumbersTabState();
}

class _NumbersTabState extends State<NumbersTab> {
  final _mediaHelper = MediaHelper();

  @override
  void initState() {
    super.initState();

    _mediaHelper.cache = ["1", "2", "3", "4", "5", "6"];
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("1"),
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("2"),
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("3"),
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("4"),
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("5"),
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: () => _mediaHelper.playMp3("6"),
          child: Image.asset("assets/images/6.png"),
        ),
      ],
    );
  }
}
