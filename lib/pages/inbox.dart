import 'package:flutter/material.dart';
import 'search.dart';

class Inbox extends StatefulWidget {
  final String title;
  Inbox(this.title);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: logoIcon(),
      ),
      title: Text(
        "INBOX",
        style: TextStyle(fontFamily: 'OpenSans', color: Colors.black),
      ),
      centerTitle: true,
    ));
  }
}
