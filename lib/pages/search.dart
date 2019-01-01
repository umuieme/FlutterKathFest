import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final String title;
  Search(this.title);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
          "SEARCH",
          style: TextStyle(fontFamily: 'OpenSans', color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: TextField(
                      controller:
                          TextEditingController(text: "Enter you search query"),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35.0),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      child: Center(
                          child: Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 24.0,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
