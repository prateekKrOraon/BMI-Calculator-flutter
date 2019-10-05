import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget{

  ReusableCard({@required this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 4.0,
      margin: EdgeInsets.all(15.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }

}