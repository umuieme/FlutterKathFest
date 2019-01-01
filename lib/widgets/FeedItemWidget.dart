import 'package:flutter/material.dart';
import 'package:kath_fest/model/FeedModel.dart';

class FeedItem extends StatelessWidget {
  final FeedModel feedItem;

  FeedItem(this.feedItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Card for our item
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        // widget for giving some padding
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // first column
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "image/${feedItem.image}",
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        feedItem.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        child: Text(
                          "${DateTime.now().difference(feedItem.publishTime).inHours} hours ago",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              feedItem.description,
              style: TextStyle(wordSpacing: 1),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
    ;
  }
}
