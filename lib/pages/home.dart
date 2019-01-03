import 'package:flutter/material.dart';
import '../utils/chatcard.dart';
import '../utils/popup.dart';

class Home extends StatefulWidget {
  final String title;
  Home(this.title);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset('assets/images/icon.png'),
        actions: <Widget>[
          Popup(),
        ],
        backgroundColor: Colors.white,
        title: Text(
          "HOME",
          style: TextStyle(fontFamily: 'OpenSans', color: Colors.black),
        ),
        centerTitle: true,
      ),

      body: ListView(
        children: <Widget>[
          ChatCard(
            logoPath: 'assets/images/flutter.png',
            title: "Flutter Nepal Group",
            subtitle: "3 hours ago",
            content: "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",

          ),
          ChatCard(
            logoPath: 'assets/images/gdg.png',
            title: "Google Developers Group",
            subtitle: "1 hours ago",
            content: "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
          ),
          ChatCard(
            logoPath: 'assets/images/circle.png',
            title: "Dubino",
            subtitle: "12 hours ago",
            content: "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
          ),
            ChatCard(
            logoPath: 'assets/images/flutter.png',
            title: "Flutter Nepal Group",
            subtitle: "3 hours ago",
            content: "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",

          ),
          ChatCard(
            logoPath: 'assets/images/gdg.png',
            title: "Google Developers Group",
            subtitle: "1 hours ago",
            content: "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
          ),
          ChatCard(
            logoPath: 'assets/images/circle.png',
            title: "Dubino",
            subtitle: "12 hours ago",
            content: "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
          ),
        ],
      ),
    );
  }
}
