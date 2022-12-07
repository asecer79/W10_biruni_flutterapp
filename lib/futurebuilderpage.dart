import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  Future<List<String>> getRecords(String searchText) async {
    var data = ["Ankara", "İzmir", "Zonguldak", "Bartın"]
        .where((element) => element.toLowerCase().contains(searchText.toLowerCase()));
    return data.toList();
  }

  String searchText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
                decoration: InputDecoration(
                    hintText: "Search",
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .85))),
          )
        ],
      ),
      body: FutureBuilder(
        future: getRecords(searchText),
        builder: (context, snapshot) {
          var data = snapshot.data;
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${index + 1}", style: TextStyle(fontSize: 32)),
                      Text("${data[index]}", style: TextStyle(fontSize: 32)),
                    ]);
              },
            );
          } else {
            return Text("Snapshot has no data!");
          }
        },
      ),
    );
  }
}
