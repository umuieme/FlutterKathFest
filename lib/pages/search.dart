import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final String title;
  Search(this.title);

  @override
  _SearchState createState() => _SearchState();
}

enum Settings { About, Flutter, Contact }

class _SearchState extends State<Search> {

  final TextEditingController _usernameController = new TextEditingController();
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
              child: PopupMenuButton(
                icon: Icon(Icons.more_vert, color: Colors.black,),
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<Settings>>[
                      const PopupMenuItem<Settings>(
                        value: Settings.About,
                        child: Text("About Us"),
                      ),
                      const PopupMenuItem<Settings>(
                        value: Settings.Contact,
                        child: Text("Contact Us"),
                      ),
                      const PopupMenuItem<Settings>(
                        value: Settings.Flutter,
                        child: Text("Flutter Us"),
                      ),
                    ],
              )),
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
                  padding: const EdgeInsets.only(left: 20.0),
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
                 
                  child: Container(
                      
                      height: 50.0,
                      width: 500.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextField(
                        
                        controller: _usernameController,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: "Enter Your Username",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 14.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                ),
                SizedBox(height: 35.0),
                Center(
                  child: FlatButton(
                    color: Color(0xFFFFF5757),
                    onPressed: (){},
                    child: Text("Search", style: TextStyle(color: Colors.white),),
                  ),



                  // child: InkWell(
                  //   onTap: () {},
                  //   child: Container(
                  //     child: Center(
                  //         child: Text(
                  //       "Search",
                  //       style: TextStyle(
                  //           fontSize: 24.0,
                  //           fontFamily: 'OpenSans',
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.white),
                  //     )),
                  //     decoration: BoxDecoration(
                  //       color: Color(0xFFFFF5757),
                  //       borderRadius: BorderRadius.circular(90.0),
                  //     ),
                  //     height: 70.0,
                  //     width: 180.0,
                  //   ),
                  // ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
