import 'package:flutter/material.dart';
import 'package:kath_fest/model/FeedModel.dart';

class FeedItem extends StatelessWidget {
  final FeedModel feedItem;     //declaring instance  feedItem of type FeedModel class and made it final so that it's value remains unchangeable throught the lifetime of our app.

  FeedItem(this.feedItem);    //initialising our feedItem in FeedItem constructor

  @override
  Widget build(BuildContext context) {
    return Card(        
      // Card for our item
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16), //lets us give top-bottom space of 10dp , right-left of 16dp space outside from our card
      child: Padding(     //our Card widget lets us use a single Child and we make use of it by using Padding to give some spaces around
        // widget for giving some padding
        padding: const EdgeInsets.all(16.0),  //giving space inside card and outside our card's content of 16 dp
        child: Column(      //Padding widget also lets us use a single child and we make Column our widget which is powerful enough to give multiple list of widgets
          // first column
          children: <Widget>[     
            Row(                //row allows us to arrange our widgets horizontally and also lets us define multiple list of widgets
              children: <Widget>[
                CircleAvatar(     //this lets us define a cirular shaped container inside which we can define custom color, images, text ,etc
                  radius: 30,   //the radius of our circle will be 30
                  backgroundColor: Colors.white,  //color of circle will be white
                  child: Image.asset(     //Image.asset lets us pick image from our pubspec.yaml which will be inside our app 
                    "image/${feedItem.image}",  //declaring path of our image and 
                    fit: BoxFit.contain,    //Image has property to fit our image in a box which lets us carefully place our image to show full image  
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),   //giving margin only to the left by 8dp
                  child: Column(      //using child of Container to give a widget of COlumn, which is a multi children widget
                    crossAxisAlignment: CrossAxisAlignment.start, //crossaxis of Column means horizontal arrangement and will arrange widgets from the beginning
                    children: <Widget>[ //lets us define multiple widgets
                      Text(         //text widget to display name
                        feedItem.name,    //accessing the name with the use of our FeedModel's instance feedItem , as we have mocked our dummy data in FeedModel class, we use feedItem
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        child: Text(
                          "${DateTime.now().difference(feedItem.publishTime).inHours} hours ago", //access Current Time from mobile and display as text
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(     //sizedbox gives space of 8dp from above widget to the next widget 
              height: 8,    
            ),
            Text(     
              feedItem.description,       //gives our 'lorem ipsum...' contents which was a mock data declared in FeedModel class
              style: TextStyle(wordSpacing: 1),   //styles our text giving space of 1dp for each word 
              textAlign: TextAlign.justify,     //lets center our text content
            )
          ],
        ),
      ),
    );
    ;
  }
}
