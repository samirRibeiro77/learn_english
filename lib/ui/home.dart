import 'package:flutter/material.dart';
import 'package:learn_english/model/tab.dart';
import 'package:learn_english/ui/tabs/animals_tab.dart';
import 'package:learn_english/ui/tabs/numbers_tab.dart';
import 'package:learn_english/ui/tabs/vowels_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final tabs = [
    AppTab(0, "Animals", AnimalsTab()),
    AppTab(1, "Numbers", NumbersTab()),
    AppTab(2, "Vowels", VowelsTab()),
  ];

  test(){
    // _tabController.
  }

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        bottom: TabBar(
          indicatorWeight: 4.0,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white38,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "Animals"),
            Tab(text: "Numbers"),
            Tab(text: "Vowels"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[AnimalsTab(), NumbersTab(), VowelsTab()],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
  }
}
