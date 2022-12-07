import 'package:flutter/material.dart';
import 'package:flutter_application_1/page1.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigator")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Home",
            style: TextStyle(fontSize: 32),
          )
        ],
      )),
      bottomNavigationBar: Container(
        color: Colors.brown,
        child: Row(children: [
          IconButton(
              onPressed: () async {
                //.....
                var result = await Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Page1(
                      fullName: "Ahmet Kızıl",
                    );
                  },
                ));
                print(result);
                //.....
              },
              iconSize: 36,
              icon: Icon(Icons.search),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              iconSize: 36,
              icon: Icon(Icons.crop_sharp),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              iconSize: 36,
              icon: Icon(Icons.access_alarm),
              color: Colors.white)
        ]),
      ),
    );
  }
}
