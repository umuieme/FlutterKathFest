import 'package:flutter/material.dart';
import 'inbox.dart';
import 'search.dart';

class Home extends StatefulWidget {
  final String title;
  Home(this.title);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Inbox inbox;
  var search = new Search("Search");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: logoIcon(),
        ) ,
        backgroundColor: Colors.white,
        title: Text(
          "HOME",
          style: TextStyle(
            fontFamily: 'OpenSans',
            color: Colors.black
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
