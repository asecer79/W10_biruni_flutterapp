import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabExamplePage extends StatefulWidget {
  const TabExamplePage({super.key});

  @override
  State<TabExamplePage> createState() => _TabExamplePageState();
}

class _TabExamplePageState extends State<TabExamplePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tap Pages"),
          bottom: TabBar(indicatorColor: Colors.blue, tabs: [
            Tab(icon: Icon(Icons.search), text: "Search"),
            Tab(icon: Icon(Icons.access_alarm), text: "Meetings"),
            Tab(icon: Icon(Icons.crop_sharp), text: "Crop"),
            Tab(icon: Icon(Icons.ac_unit), text: "Weather"),
          ]),
        ),
        body: TabBarView(children: [
          Container(color: Colors.black, height: 300, width: 300),
          Container(color: Colors.amber, height: 300, width: 300),
          Container(color: Colors.blue, height: 300, width: 300),
          Container(color: Colors.red, height: 300, width: 300),
        ]),
      ),
    );
  }
}
