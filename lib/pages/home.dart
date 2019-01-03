import 'package:flutter/material.dart';
import 'inbox.dart';

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
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 33.0,
            ),
          ),
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
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String logoPath;
  final String title;
  final String subtitle;
  final String content;

  ChatCard({this.logoPath, this.title, this.subtitle, this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    image: DecorationImage(
                      image: AssetImage(logoPath),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oxygen',
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oxygen',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 15.0),
              child: Text(
                 content,
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 17.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
