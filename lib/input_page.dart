import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_widget.dart';
import 'gender_card_content.dart';

const inactiveCardColour = Color(0xFF111328);
const activeCardColour = Color(0xFF1E1D33);
const calculateButtonColour = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: GenderCardContent(
                        icon: FontAwesomeIcons.male,
                        title: 'MALE',
                      ),
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: GenderCardContent(
                        icon: FontAwesomeIcons.female,
                        title: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 30,
            child: ReusableCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            flex: 30,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              color: calculateButtonColour,
              child: Center(
                  child: Text(
                'Calculate',
                style: TextStyle(fontSize: 18),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
