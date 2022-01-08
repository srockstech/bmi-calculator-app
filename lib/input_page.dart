import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_widget.dart';
import 'gender_card_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 19;
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 27.5,
                vertical: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 24,
                    child: Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            colour: selectedGender == Gender.male
                                ? kInactiveCardColour
                                : kActiveCardColour,
                            cardChild: GenderCardContent(
                              icon: FontAwesomeIcons.male,
                              iconColour: selectedGender == Gender.male
                                  ? Colors.white
                                  : Color(0xFF8D8E98),
                              title: 'MALE',
                            ),
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            onPress: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            colour: selectedGender == Gender.female
                                ? kInactiveCardColour
                                : kActiveCardColour,
                            cardChild: GenderCardContent(
                              icon: FontAwesomeIcons.female,
                              iconColour: selectedGender == Gender.female
                                  ? Colors.white
                                  : Color(0xFF8D8E98),
                              title: 'FEMALE',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'HEIGHT',
                            style: kTitleStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                height.toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                'cm',
                                style: kTitleStyle,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: kSliderActiveColour,
                              inactiveTrackColor: kSliderInactiveColour,
                              thumbColor: kSliderThumbColour,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: kSliderThumbRadius),
                              overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: kSliderThumbOverlayRadius),
                              overlayColor: kSliderThumbOverlayColour,
                              trackHeight: kSliderTrackHeight,
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.toInt();
                                });
                              },
                              min: kSliderMinValue,
                              max: kSliderMaxValue,
                            ),
                          )
                        ],
                      ),
                      colour: kActiveCardColour,
                    ),
                  ),
                  Expanded(
                    flex: 30,
                    child: Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: kTitleStyle,
                                ),
                                Text(
                                  weight.toString(),
                                  style: kNumberStyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconsButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPress: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    RoundIconsButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPress: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            colour: kActiveCardColour,
                          ),
                        ),
                        Expanded(
                          child: ReusableCard(
                            cardChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AGE',
                                  style: kTitleStyle,
                                ),
                                Text(
                                  age.toString(),
                                  style: kNumberStyle,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RoundIconsButton(
                                      icon: FontAwesomeIcons.minus,
                                      onPress: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    RoundIconsButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPress: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            colour: kActiveCardColour,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: kCalculateButtonColour,
              child: Center(
                  child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconsButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconsButton({@required this.icon, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      child: Icon(icon),
    );
  }
}
