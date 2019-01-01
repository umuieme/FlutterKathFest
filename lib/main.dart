import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/inbox.dart';
import './pages/search.dart';
import 'package:bmnav/bmnav.dart' as bmnav;

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

      bottomNavigationBar: 
      // bmnav.BottomNav(
      //   index: _currentIndex,
      //   labelStyle: bmnav.LabelStyle(visible: false),
      //   elevation: 8.0,
      //  iconStyle: bmnav.IconStyle(onSelectColor: Colors.white),
        // onTap: (int i) {
        //   if (i == 0) {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => Home("Home"),
        //       ),
        //     );
        //   } else if (i == 1) {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => Search("Search"),
        //       ),
        //     );
        //   } else if (i == 2) {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => Inbox("Inbox"),
        //       ),
        //     );
        //   }
        // },
      //   items: [
      //     bmnav.BottomNavItem(
      //       Icons.home, isFlightSelected
      //     ),
      //     bmnav.BottomNavItem(Icons.search),
      //     bmnav.BottomNavItem(Icons.message),
      //   ],
      // ),

      // Theme(
      //   data: Theme.of(context).copyWith(
      //     //sets the background color of the 'Bottom Navigation Bar'
      //     canvasColor: bottomNavigationColor,
      //     //sets the active color of the 'BottomNavigationBar/ if 'Brightness' is light
      //     primaryColor: bottomNavigationColor,
      //     textTheme: Theme
      //     .of(context)
      //     .textTheme
      //     .copyWith(caption: TextStyle(color: Colors.black))
      //   ),

       BottomNavigationBar(
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

