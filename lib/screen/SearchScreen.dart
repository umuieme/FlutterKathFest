import 'package:flutter/material.dart';
import 'package:kath_fest/widgets/AppButton.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = "";   //initially we give empty string as our search string 

  _SearchScreenState() {}   //declaring a Constructor <#But Why?>

  @override
  Widget build(BuildContext context) {
    return Padding(                   //With the use of Padding Widget, we are giving spacing of 32 dp to all over our Search screen 
      padding: EdgeInsets.all(32.0),
      child: Column(                //declaring column widget so as to align things vertically
        crossAxisAlignment: CrossAxisAlignment.start, //cross axis aligning lets us arrange our widgets horizontally and .start makes it appear on the beginning of the Column
        children: <Widget>[     //with the power given by Column to generate list of multiple widgets we are declaring children of column
          Text(
            "Search",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),  //styling our Search text with bold and bigger font
            textAlign: TextAlign.start,   //aligning our search text from start 
          ),
          Container(      
            margin: EdgeInsets.only(top: 10, bottom: 20),     //we are giving margin of 10 and 20 dp from top and bottom side of container aka search button
            padding: EdgeInsets.symmetric(horizontal: 16),    //we are giving space or margin of 16 min from left and right side
            decoration: BoxDecoration(                    //BoxDecoration is used to decorate our Container it has lots of properties to use 
                border: Border.all(color: Colors.grey),   //  specifying color of border as grey
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: TextField(                   //Container widget lets us use a single child so we make use of TextField widget
              cursorColor: Colors.red,        //the blinking cursor's color will be red as our theme color is red
              onChanged: this.onTextChange,   //method to do when we start typing in textfield like making button Active when starting to type
              decoration: InputDecoration(    //InputDecoration allows us to style our textfield as our wish
                  border: InputBorder.none,   //we are not using any borders below top or anywhere our textfield
                  hintText: "Enter your search query"),   //a visible hint text for user's good user experience purpose which disappears as we start typing
            ),
          ),
          // search button
          AppButton("Search", searchText.isEmpty ? null : this.onSearchPressed),    //Our app button which has parameter of button text title and it checks if searchText is empty then it will pass null else do as onSearchPressed method says
        ],
      ),
    );
  }
//this method takes a string as input and prints in our console the text typed by user and sets value of Instance Variable searchText as the text typed by user.
  onTextChange(String text) {
    print("onTextChange called $text");
    this.setState(() {        //setState allows us to visually see the change made in our app it literally modifies things in screen.
        searchText = text;
    });
  }
//this method simply prints in our console
  onSearchPressed() {
    print("Search Button Pressed");
  }
}
