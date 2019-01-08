import 'package:flutter/material.dart';
import 'package:kath_fest/widgets/AppButton.dart';
import 'package:kath_fest/widgets/RecentMessage.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  onNewMessagePress() {}    //???? a callback function with no any declaration

  @override
  Widget build(BuildContext context) {
    return Padding(   //With the help of Padding widget, specifying required spacing of 16dp from left, top, right bottom  
      padding: const EdgeInsets.all(16.0),    
      child: Column(    //
        crossAxisAlignment: CrossAxisAlignment.stretch, //the crossaxis for Column means row wise so we are going to stretch our components row wise 
        children: <Widget>[   //Column supports Multi Widgets so we are using that power to build a list of widget 
          AppButton(        //AppButton is a custom button we designed so as to display a button as per our need which has text "New Message" passed via paramenter 
            "New Message",
            this.onNewMessagePress, //this is the action we have to decide when the button is pressed
          ),
          RecentMessage(),      //???? 
        ],
      ),
    );
  }
}
