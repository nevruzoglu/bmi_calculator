import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const buttomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: activeCardColor,
                    customWidged: Container(
                      child: Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mars),
                          SizedBox(
                            height: 15,
                          ),
                          Text('MALE'),
                        ],
                      ),
                    ),
                  )),
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                ],
              ),
            ),
            Expanded(child: ReusableCard(colour: activeCardColor)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                  Expanded(child: ReusableCard(colour: activeCardColor)),
                ],
              ),
            ),
            Container(
              color: buttomContainerColor,
              margin: EdgeInsets.only(top: 15),
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.customWidged});
  final Color colour;
  final Widget customWidged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
