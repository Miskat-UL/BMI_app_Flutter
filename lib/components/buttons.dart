import 'package:flutter/material.dart';
import 'constant.dart';

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

class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.onTap, @required this.buttonString});

  final Function onTap;
  final String buttonString;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonString,
            style: kCalculateButtonStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContHeight,
      ),
    );
  }
}
