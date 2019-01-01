import 'package:flutter/material.dart';
import 'package:kath_fest/widgets/AppButton.dart';
import 'package:kath_fest/widgets/RecentMessage.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  onNewMessagePress() {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AppButton(
            "New Message",
            this.onNewMessagePress,
          ),
          RecentMessage(),
        ],
      ),
    );
  }
}
