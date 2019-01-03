import 'package:flutter/material.dart';

enum Settings { About, Flutter, Contact }

class Popup extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    
    return Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: PopupMenuButton(
                icon: Icon(Icons.more_vert, color: Colors.black,),
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<Settings>>[
                      const PopupMenuItem<Settings>(
                        value: Settings.About,
                        child: Text("About Us"),
                      ),
                      const PopupMenuItem<Settings>(
                        value: Settings.Contact,
                        child: Text("Contact Us"),
                      ),
                      const PopupMenuItem<Settings>(
                        value: Settings.Flutter,
                        child: Text("Flutter Us"),
                      ),
                    ],
              ));
  }
}