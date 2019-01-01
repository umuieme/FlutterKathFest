import 'package:flutter/material.dart';
import 'package:kath_fest/widgets/AppButton.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller;

  _SearchScreenState() {
//    controller = TextEditingController("asd");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Search",
            style: TextStyle(),
            textAlign: TextAlign.start,
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: TextField(
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your search query"),
            ),
          ),
          // search button
          AppButton("Search", this.onSearchPressed),
        ],
      ),
    );
  }

  onSearchPressed() {
    print("Search Button Pressed");
  }
}
