import 'package:flutter/material.dart';
import 'package:kath_fest/widgets/MessageItem.dart';

class RecentMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0x22FF5757)),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color(0x22FF5757),
                offset: Offset(0, 10),
                blurRadius: 16,
                spreadRadius: 5)
          ],
          borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Your Messages"),
          MessageItem("Flutter Nepal", "flutter-nepal.png", "Umesh",
              "Hello everyone. Are you having fun?"),
          MessageItem("Dubinu", "dubino.png", "Person1",
              "This platform is awesome. Lets try it for all our future projects")
        ],
      ),
    );
  }
}
