import 'package:flutter/material.dart';
import 'constants.dart';

class IconSelect extends StatelessWidget {
  IconSelect({this.icon, this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            gender,
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
