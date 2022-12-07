import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottomnavigationbarpage.dart';

import 'futurebuilderpage.dart';
import 'tabexamplepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const BottomNavPage(),
    );
  }
}
