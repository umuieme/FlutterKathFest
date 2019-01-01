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
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: logoIcon(),
        // ) ,
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
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(145.0))
                ),
                height: 290.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: <Widget>[
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
                                    "6 hours ago",
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
                            height: 10.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 290.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: <Widget>[
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
                                    "3 hours ago",
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
                            height: 10.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 290.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Image.asset('assets/images/circle.png'),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Dubinu",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'OpenSans'),
                                  ),
                                  Text(
                                    "12 mins ago",
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
                            height: 10.0,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet,mollit anim id est laborum, consectetur pa qui officia mollit anim id est laborum deserunt mollit anim id est laborum.",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
