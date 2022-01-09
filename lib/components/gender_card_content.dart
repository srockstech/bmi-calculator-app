import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCardContent extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColour;
  GenderCardContent({this.icon, this.title, this.iconColour});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 65,
          color: iconColour,
        ),
        Text(
          title,
          style: kTitleStyle,
        ),
      ],
    );
  }
}
