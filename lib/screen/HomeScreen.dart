import 'package:flutter/material.dart';
import 'package:kath_fest/model/FeedModel.dart';
import 'package:kath_fest/widgets/FeedItemWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FeedModel> feedList = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    feedList = FeedModel.getDummyData();
    this.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: feedList.length,
        itemBuilder: (buildContext, position) {
          return FeedItem(feedList[position]);
        });
  }
}
