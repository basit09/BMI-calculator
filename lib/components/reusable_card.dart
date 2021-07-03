import 'package:flutter/material.dart';

//REUSABLE CARD CLASS

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
      this.childCard,this.onPress}); //constructor and @required keyword is used to make
  //the colour property compulsory to be applied whenever the is call

  final Color colour;
  final Widget childCard;
  //making function for onPress property
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress ,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(12.0),
        ),
        //height: 200,
        //width: 150,
      ),
    );
  }
}
