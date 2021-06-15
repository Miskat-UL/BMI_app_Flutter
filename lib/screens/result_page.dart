import 'package:bmi_calculator/components/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reuseableCard.dart';
import 'input_file.dart';
import 'package:bmi_calculator/components/buttons.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.introText});

  final String bmiResult;
  final String resultText;
  final String introText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CAlculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChlid: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kWeightMeasure,
                  ),
                  Text(
                    bmiResult,
                    style: kBmi,
                  ),
                  Text(
                    introText,
                    style: kResult,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonString: "re-Calculate",
          ),
        ],
      ),
    );
  }
}
