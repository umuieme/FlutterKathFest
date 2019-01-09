import 'package:flutter/material.dart';
import 'package:kath_fest/widgets/MessageItem.dart';

class RecentMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(         //we are working out on Container to set things for RecentMessage
      margin: EdgeInsets.symmetric(vertical: 32), //margin space of 32 dp from top and bottom side.
      padding: EdgeInsets.all(16),      //space inside container of 16dp 
      decoration: BoxDecoration(        //BoxDecoration to decorate our container
          border: Border.all(color: Color(0x22FF5757)),   //setting color of our border 
          color: Colors.white,      //the main color of our container wil be white
          boxShadow: <BoxShadow>[     //List of BoxShadow to specify shadow for our container 
            BoxShadow(                  
                color: Color(0x22FF5757),   //shadow color
                offset: Offset(0, 10),      //setting (x,y) co-ordinate of our shadow so as to make it look more material 
                blurRadius: 16,     // amount of blur given to our shadow
                spreadRadius: 5)      //how much do we want to spread our shadow
          ],
          borderRadius: BorderRadius.circular(4)),    //our each corner border of RecentMessage Container is going to be somewhat round 
      child: Column(                                         //child of our Container is going to be Column to use list of widgets 
        crossAxisAlignment: CrossAxisAlignment.start,     //cross axis of column means arraning things horizontally from the start of widget
        children: <Widget>[     
          Text("Your Messages"),                                          
          MessageItem("Flutter Nepal", "flutter-nepal.png", "Umesh",      //hard coding our message item to display in Recent Message
              "Hello everyone. Are you having fun?"),
          MessageItem("Dubinu", "dubino.png", "Person1",
                "This platform is awesome. Lets try it for all our future projects")
        ],
      ),
    );
  }
}
