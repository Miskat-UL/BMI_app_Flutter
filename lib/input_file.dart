import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconClass.dart';
import 'reuseableCard.dart';

const bottomContHeight = 80.0;
const allColorProp = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF2b2b38);

enum G { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  G selectedGender;
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateColor(G.male);
                        selectedGender = G.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == G.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChlid: IconClass(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateColor(G.female);
                        selectedGender = G.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == G.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChlid: IconClass(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: allColorProp,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: allColorProp,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: allColorProp,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContHeight,
          ),
        ],
      ),
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
