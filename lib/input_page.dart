import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'IconSelect.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Gender selectGender;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    colour: selectGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconSelect(
                      icon: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    colour: selectGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconSelect(
                      icon: FontAwesomeIcons.venus,
                      gender: 'FEMALE',
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  children: <Widget>[
                    Text('HEIGHT'),
                    Row(
                      children: <Widget>[
                        Text(
                          '180',
                          style: kNumberTextStyle,
                        ),
                        Text('cm'),
                      ],
                    ),
                  ],
                ),
                colour: kActiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: kActiveCardColor)),
                  Expanded(child: ReusableCard(colour: kActiveCardColor)),
                ],
              ),
            ),
            Container(
              color: kButtomContainerColor,
              margin: EdgeInsets.only(top: 15),
              height: kBottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
