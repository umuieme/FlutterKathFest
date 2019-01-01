import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  final String name;
  final String imageName;
  final String senderName;
  final String lastMessage;

  const MessageItem(
      this.name, this.imageName, this.senderName, this.lastMessage);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("image/$imageName"),
      title: Text(name),
      subtitle: Text(
        "$senderName: $lastMessage",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
