import 'package:flutter/material.dart';

class VowelsTab extends StatefulWidget {
  const VowelsTab({super.key});

  @override
  State<VowelsTab> createState() => _VowelsTabState();
}

class _VowelsTabState extends State<VowelsTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Text(
            "Still building this page...",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
