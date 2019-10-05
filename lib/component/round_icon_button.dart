import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget{

  RoundIconButton({
    @required this.childIconData,
    @required this.iconColor,
    @required this.iconFillColor,
    @required this.onPressed,
  });

  final IconData childIconData;
  final Color iconFillColor;
  final Color iconColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        childIconData,
        color: iconColor,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: iconFillColor,

      highlightElevation: 2.0,
      highlightColor: Colors.grey,

      onPressed: this.onPressed,
    );
  }

}