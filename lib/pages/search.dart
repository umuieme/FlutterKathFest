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
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: logoIcon(),
        ),
        title: Text(
          "SEARCH",
          style: TextStyle(fontFamily: 'OpenSans', color: Colors.black),
        ),
        centerTitle: true,
      ),
    );
  }
}

Widget logoIcon(){
   return Container(
            child: Center(child: Text("A", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red,
            ),
          );
}