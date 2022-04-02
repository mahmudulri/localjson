import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  var data;
  PageTwo(this.data);
  @override
  _PageTwoState createState() => _PageTwoState(this.data);
}

class _PageTwoState extends State<PageTwo> {
  var data;
  _PageTwoState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page Two"),
        ),
        body: Center(
          child: Column(
            children: [
              // AssetImage(${data['image']}),
              Text("Name:  ${data['name']}"),
              Text("Email: ${data['email']}"),
            ],
          ),
        ));
  }
}
