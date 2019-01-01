import 'package:flutter/material.dart';
import 'package:kath_fest/screen/HomeScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  final pageTitle = ["Home", "Search", "Inbox"];
  TabController tabController;

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
          children: [HomeScreen(), Text(pageTitle[1]), Text(pageTitle[2])]),
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
