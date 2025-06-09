import 'package:flutter/material.dart';
import 'package:learn_english/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final _appName = "Learning English";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        primaryColor: Color(0xff795548),
          scaffoldBackgroundColor: Color(0xfff5e9b9)
      ),
      home: HomePage(title: _appName),
    );
  }
}