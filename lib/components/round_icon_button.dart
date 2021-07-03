import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        elevation: 0.0,
        child: Icon(icon),
        //this box constraints is from floating action buttton file
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        onPressed: onPressed);
  }
}