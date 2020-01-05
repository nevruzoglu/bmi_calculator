import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiNumberText,
      @required this.commentTextFinal,
      @required this.resultTextFinal});
  String bmiNumberText;
  String resultTextFinal;
  String commentTextFinal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: kLargeButtonTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  resultTextFinal.toUpperCase(),
                  style: kResultTextSize,
                ),
                Text(
                  bmiNumberText,
                  style: kBmiResult,
                ),
                Text(
                  commentTextFinal,
                  style: kBmiBody,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )),
          BottomButtom(
            buttomText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
