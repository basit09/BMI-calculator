import 'dart:math';

class BrainCalculator {
  BrainCalculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi; //making bmi a private property

  String calculateBMI() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(
        1); //to string as fixed is used to take only one decimal value after point
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight!';
    } else if (_bmi > 18.5) {
      return 'Normal.';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight, try to work your ass off and exercise!';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, Great ';
    } else {
      return 'You have a lower than normal body weight, have some healthy food buddy!!';
    }

  }
}
