import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButtom extends StatelessWidget {
  BottomButtom({@required this.buttomText, @required this.onTap});
  final Function onTap;
  final String buttomText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttomText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kButtomContainerColor,
        padding: EdgeInsets.only(bottom: 15),
        margin: EdgeInsets.only(top: 15),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
