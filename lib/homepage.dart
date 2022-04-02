import 'package:flutter/material.dart';
import 'PageTwo.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class Homepage extends StatefulWidget {
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // var data;

  List data = List();
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data.json');

    setState(() {
      data = json.decode(jsonText);
    });
  }

  @override
  void initState() {
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Json Test"),
        ),
        body: ListView.builder(
          // itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: Image.asset(data[index]['image']),
                  title: Text(data[index]['name']),
                  subtitle: Text(data[index]['email']),
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => PageTwo(data[index]));
                    Navigator.push(context, route);
                  },
                ),
              ],
            );
          },
          itemCount: data == null ? 0 : data.length,
        ));
  }
}
