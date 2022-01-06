import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Color(0xFF0A0E21),
              secondary: Colors.pink,
            ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
            letterSpacing: 5,
            shadows: <Shadow>[
              Shadow(
                color: Color(0xFFFFFFFF),
                offset: Offset(0.5, 0.5),
                blurRadius: 5,
              ),
            ],
          ),
          color: Colors.pink,
          toolbarHeight: 40,
          shape: ContinuousRectangleBorder(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(70.0),
              bottomRight: Radius.circular(70.0),
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: InputPage(),
    );
  }
}
