import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/inbox.dart';
import './pages/search.dart';

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
  List<Widget> list = List();

  @override
  void initState() {
    list..add(Home("Home"))..add(Search("Search"))..add(Inbox("Inbox"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
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
