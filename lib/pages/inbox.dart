import 'package:flutter/material.dart';
import 'package:flutter_nepal_app/utils/messagecard.dart';
import 'package:flutter_nepal_app/utils/popup.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/icon.png'),
        actions: <Widget>[
          Popup(),
          
        ],
        title: Text(
          "INBOX",
          style: TextStyle(fontFamily: 'OpenSans', color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              //BUTTON BEGINS:
              child: InkWell(
                onTap: () {},
                child: Container(
                  child: Center(
                      child: Text(
                    "New Message",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF5757),
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  height: 70.0,
                  width: 180.0,
                ),
              ),
            ),
          ),
          MessageCard(
            title: "Your Messages",
            logoPath: 'assets/images/flutter.png',
            message: "Sam: Hello Flutter!",
            senderName: "Flutter Nepal Group",
          ),
          MessageCard(
            title: "Your Messages",
            logoPath: 'assets/images/gdg.png',
            message: "Robin: Hello Google!",
            senderName: "Google Developers Group",
          ),
        ],
      ),
    );
  }
}
