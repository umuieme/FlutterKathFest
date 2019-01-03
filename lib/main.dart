import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/inbox.dart';
import './pages/search.dart';
//import 'package:bmnav/bmnav.dart' as bmnav;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Nepal App",
      home: FlutterNepal(),
    ));

final bottomNavigationColor = Color(0xFFFFF5757);

class FlutterNepal extends StatefulWidget {
  @override
  _FlutterNepalState createState() => _FlutterNepalState();
}

class _FlutterNepalState extends State<FlutterNepal>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
//  List<Widget> list = List();
  List<Widget> _tabList = [
    Home("Home"),
    Search("Search"),
    Inbox("Inbox"),
  ];
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // list..add(Home("Home"))..add(Search("Search"))..add(Inbox("Inbox"));

    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //body: list[_currentIndex],
        body:  
          TabBarView(
        children: _tabList,
        controller: _tabController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _tabController.animateTo(_currentIndex);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 34.0,
              color: bottomNavigationColor,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 34.0,
              color: bottomNavigationColor,
            ),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              size: 34.0,
              color: bottomNavigationColor,
            ),
            title: Text(""),
          ),
        ],
      ),



    );
  }
}
