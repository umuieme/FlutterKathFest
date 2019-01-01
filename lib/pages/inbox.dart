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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
       
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

        title: Text(
          "INBOX",
          style: TextStyle(fontFamily: 'OpenSans', color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
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
          Container(
            height: 290.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Your Messages",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 18.0,
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/gdg.png'),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Google Developers Group",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans'),
                              ),
                              Text(
                                "Your Message: Hello Let's Go!",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'OpenSans'),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset('assets/images/flutter.png'),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Flutter Nepal",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans'),
                              ),
                              Text(
                                "Flutter Rocks: Let's Flutter",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'OpenSans'),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
