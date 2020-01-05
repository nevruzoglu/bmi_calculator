import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String bmiNumber() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String commentText() {
    if (_bmi >= 25) {
      return 'You need to give weight, exercise some and calculate again';
    } else if (_bmi > 18.5) {
      return 'Your body is ideal. Great Job!';
    } else {
      return 'Try to gain some weight. You weight is lower than avarage person';
    }
  }
}
