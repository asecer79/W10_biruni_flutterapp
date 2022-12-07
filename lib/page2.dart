import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page2")),
      body: Center(
        child: ElevatedButton(
          child: Text("Close"),
          onPressed: () {},
        ),
      ),
    );
  }
}
