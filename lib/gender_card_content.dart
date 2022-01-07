import 'package:flutter/material.dart';

const titleStyle = TextStyle(
  height: 2.0,
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class GenderCardContent extends StatelessWidget {
  final IconData icon;
  final String title;
  GenderCardContent({this.icon, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        Text(
          title,
          style: titleStyle,
        ),
      ],
    );
  }
}
