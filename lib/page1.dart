import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key, required String fullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page1")),
      body: Center(
        child: Column(
          children: [
            TextField(),
            ElevatedButton(
              child: Text("Close"),
              onPressed: () {
                int age = 40;
                Navigator.pop(context,age);
              },
            ),
          ],
        ),
      ),
    );
  }
}
