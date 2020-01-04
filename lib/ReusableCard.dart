import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.customWidged});
  final Color colour;
  final Widget customWidged;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: customWidged,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
