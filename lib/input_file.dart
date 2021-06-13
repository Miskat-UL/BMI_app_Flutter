import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconClass.dart';
import 'constant.dart';
import 'reuseableCard.dart';

enum G { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  G selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  // // gender--> 1 == male, 2 == female

  // void updateColor(G gender) {
  //   if (gender == G.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   } else {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = G.male;
                      });
                    },
                    colour: selectedGender == G.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChlid: IconClass(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = G.female;
                      });
                    },
                    colour: selectedGender == G.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChlid: IconClass(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: kAllColorProp,
              cardChlid: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: kAllColorProp,
                    cardChlid: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // FloatingActionButton(
                            //   backgroundColor: Colors.grey,
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),

                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: kAllColorProp,
                    cardChlid: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // FloatingActionButton(
                            //   backgroundColor: Colors.grey,
                            //   child: Icon(
                            //     Icons.add,
                            //     color: Colors.white,
                            //   ),
                            // ),

                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              pressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContHeight,
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.pressed});

  final IconData icon;
  final Function pressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
// Container(
//         margin: EdgeInsets.all(15.0),
//         height: 200.0,
//         width: 170.0,
//         decoration: BoxDecoration(
//           color: Color(0xFF1D1E22),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
