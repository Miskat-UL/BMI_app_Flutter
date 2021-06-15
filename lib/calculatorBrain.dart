import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  String calcBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overWeight';
    } else if (_bmi > 18) {
      return 'normal';
    } else {
      return 'UnderWeight';
    }
  }

  String introResult() {
    if (_bmi >= 25) {
      return 'loose some weight. you are so fat!';
    } else if (_bmi > 18) {
      return 'keep this up!';
    } else {
      return 'please eat something...';
    }
  }
}
