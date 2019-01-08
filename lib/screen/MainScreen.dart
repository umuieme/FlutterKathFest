import 'package:flutter/material.dart';
import 'package:kath_fest/screen/HomeScreen.dart';
import 'package:kath_fest/screen/MessageScreen.dart';
import 'package:kath_fest/screen/SearchScreen.dart';

//MainScreen is a Stateful widget because it has changeable widgets like changing title of the page, changing tabs
class MainScreen extends StatefulWidget {
  //Statefulwidget needs to have a State so we are calling method createState which returns MainScreenState, a class with State
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin { 
  //list of pages needed 
  final pageTitle = ["Home", "Search", "Inbox"];
  //instance of TabController to manipulate TabController widget.
  TabController tabController;

  //Constructor which initialises the tabController with length of 3 tabs and vsync:this means  
  _MainScreenState() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle[tabController.index],
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: Image.asset("image/app_icon.png"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Menu 1"),
                ),
              ];
            },
          ),
        ],
      ),
      body: TabBarView(
          controller: tabController,
          children: [HomeScreen(), SearchScreen(), MessageScreen()]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xffFF5757),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                ),
              ),
              Tab(
                icon: Icon(Icons.message),
              )
            ]),
      ),
    );
  }
}
