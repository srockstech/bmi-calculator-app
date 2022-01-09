import 'package:bmi_calculator/components/card_widget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 27.5, vertical: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        'Your Result',
                        style: kResultScreenTitleStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ReusableCard(
                      colour: kActiveCardColour,
                      cardChild: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 55.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'OVERWEIGHT',
                              style: kResultKeywordTextStyle,
                            ),
                            Text(
                              '21.7',
                              style: kResultNumberTextStyle,
                            ),
                            Text(
                              'You have a higher than normal body weight. Try to exercise more.',
                              style: kResultDescriptionStyle,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
