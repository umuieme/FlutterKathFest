import 'package:flutter/material.dart';


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
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
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
                  fontFamily: 'OpenSans',
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
