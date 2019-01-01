import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function onPress;

  const AppButton(this.title, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        disabledColor: Color(0x99FF5757),
        disabledTextColor: Color(0xaaeeeeee),
        textColor: Color(0xffffffff),
        onPressed: this.onPress,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        color: Color(0xFFFF5757),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
