import 'package:flutter/material.dart';

class MessageItem extends StatelessWidget {
  //declaring instance variables for our MessageItem contents 
  //we are going to need the name, image path, sender's name, and the last message content so we are declaring them here
  final String name;
  final String imageName;
  final String senderName;
  final String lastMessage;

  const MessageItem(
      this.name, this.imageName, this.senderName, this.lastMessage);  //constructor that initialises all our instance variables

  @override
  Widget build(BuildContext context) {
    return ListTile(          //ListTile lets us arrange our content in list manner with more features provided by Flutter for ListTile
      leading: Image.asset("image/$imageName"),   //leading property of ListTile widget allows us to place a Widget in the beginning and we are passing Image from our asset as leading item
      title: Text(name),  //the name will be provided when we call this MessageItem class then it will display name as Title(big fonts)
      subtitle: Text(     //subtitle  sits just below the Title section which is comparatively smaller than Title, part of ListTile property
        "$senderName: $lastMessage",  //we are string interpolating senderName and lastMessage so as to access our Sender's Name and last message from our constructor
        maxLines: 1,      //max lines prevents us to limit our subtitle text within just 1 line
        overflow: TextOverflow.ellipsis,  //?????
      ),
    );
  }
}
