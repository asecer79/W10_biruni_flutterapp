import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key, required String fullName});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Page1"),
        automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            children: [
              TextField(),
              ElevatedButton(
                child: Text("Close"),
                onPressed: () {
                  int age = 40;
                  Navigator.pop(context, age);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
