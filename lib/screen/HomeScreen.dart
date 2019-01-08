import 'package:flutter/material.dart';
import 'package:kath_fest/model/FeedModel.dart';
import 'package:kath_fest/widgets/FeedItemWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FeedModel> feedList = List();  //Declaring a list called 'feedList' of type FeedModel 

  @override
  void initState() {      //initialising the state 
    // TODO: implement initState
    super.initState();    // calling the parent initState method from StatefulWidget class
    feedList = FeedModel.getDummyData();    //initialising our feedList with dummydata which is a static method that holds all the dummy details needed for screen
    this.setState(() {}); //calling the setState method so as to notify the change made in the screen.
  }

  @override
  Widget build(BuildContext context) {    //we must override a build method after extending a StatefulWidget class 
    return ListView.builder(              //our build method returns a ListView, we are using a named Constructor of ListView.builder which lets us define our lists as per we require 
        itemCount: feedList.length,       //itemCount and itemBuilder are two required parameters of ListView.builder constructor so we are giving the length of our list as given by our feedmodel.lenght
        itemBuilder: (buildContext, position) { //itemBuilder lets us build our list visually which returns FeedItem with respective positions, feedlist[0], feedlist[1]... 
          return FeedItem(feedList[position]);
        });
  }
}
