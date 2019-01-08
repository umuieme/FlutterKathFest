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

  //we need to override build method when we extend StatefulWidget class which returns a Widget
  @override
  Widget build(BuildContext context) {
    //Scaffold gives the structure to develop an app's interface including Appbar, body, floatingactionbutton, drawer and many more
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pageTitle[tabController.index], //as we made a list called pageTitle, we can now get the title of the tabs by accessing index
          style: TextStyle(color: Colors.black),  //styling the title with black color
        ),
        centerTitle: true,  //centering the app title to middle of appbar
        leading: Image.asset("image/app_icon.png"), //leading allows us to place any Widgets in the starting place of appbar
        backgroundColor: Colors.white,  //sets background color of appbar
        iconTheme: IconThemeData(color: Colors.black),  //icontheme property lets us style the Icons we put 
        actions: <Widget>[    //actions property lets us place list of Widgets according to our need and we are placing a PopupMenu here
          PopupMenuButton(    //declaring popupmenu button 
            itemBuilder: (BuildContext context) { //we need a context for itemBuilder which returns an item to be displaced on PopUpMenu
              return [
                PopupMenuItem(
                  child: Text("Menu 1"),
                ),
              ];
            },
          ),
        ],
      ),
      
  //Initialising TabBarView Construstor so as to use our tabs 
      body: TabBarView(
          controller: tabController,    //controller lets us implement the tab according to our need, 
          children: [HomeScreen(), SearchScreen(), MessageScreen()]), //passing all the screen classes as children of TabBarView so that it displays our screens on each swipe
      bottomNavigationBar: Container( 
        decoration: BoxDecoration(color: Colors.white), //color of bottom nav bar will be white
        child: TabBar(                                //passing our tabbar to bottomNavBar so that we can swipe our tabs from bottom
            controller: tabController,      //tab bar controller declared as tabController, instance of TabController class
            indicatorColor: Colors.transparent,   //declaring our tab bar's indicator color as transparent so there's no color,
            labelColor: Color(0xffFF5757),    //color of label is going to be 
            unselectedLabelColor: Colors.grey,    
            tabs: [                     // declaring our tabs icon in a list with home, search and message icons provided by Material Icons.
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
