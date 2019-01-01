import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function onPress;

  const AppButton(this.title, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: this.onPress,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        color: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
