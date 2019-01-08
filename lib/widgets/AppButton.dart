import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  //we need two things to be done in this button , 1.Our Button has Text, 2. Our button is tappable (clickable)
  final String title;   //declared to declare button's text
  final Function onPress;   //declared to provide our custom onPress function when button is tapped.

  const AppButton(this.title, this.onPress);  //a constant Constructor initializing our instance variables: title and onPress

  @override
  Widget build(BuildContext context) {
    return Center(                //Center widgets simply centers widgets declared inside it.
      child: FlatButton(          //We are using a FlattButton, a type of button,FlatButton is the widget provided by Flutter 
        disabledColor: Color(0x99FF5757), //we are using this color when the button is disabled
        disabledTextColor: Color(0xaaeeeeee),   //we are going to use this color for the text in our button when button is in disabled mode
        textColor: Color(0xffffffff),     //the active button's text color is going to be this
        onPressed: this.onPress,        //FlatButton's onPressed takes a function and we will desing our custom method for onPress as per our need when we use this AppButton widget
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),  //giving top-bottom space of 16dp and left-right space fo 40dp for our button 
        child: Text(    //we get a child from our FlatButton widget which we are using to declare a text for our button
          title,    //this will be the custom title we pass when we make use of this AppButton widget later when we call it
          style: TextStyle(fontSize: 16),   //the size of our font is going to be 16.
        ),
        color: Color(0xFFFF5757),     //the color of button is going to be this one(red?)
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),   //the shape of our button is determined by this shpae property which takes a widget and we made a circular border of radisu 40dp.
      ),
    );
  }
}
