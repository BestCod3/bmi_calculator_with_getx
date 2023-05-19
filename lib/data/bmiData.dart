import 'dart:math';

class BmiData {
  static double BmiCalculate(double height, int kg) {
    final bmiresult = kg / pow(height / 100, 2);
    return bmiresult;
  }

  static String? bmiRESULT(double bmiresult) {
    if (bmiresult >= 25) {
      return 'Семиз';
    } else if (bmiresult > 18.5) {
      return 'Норма';
    } else if (bmiresult < 18.5) {
      return 'Арык';
    }
    return null;
  }

  static String? giveDescription(double bmiresult) {
    if (bmiresult >= 25) {
      return 'Перевес';
    } else if (bmiresult > 18.5) {
      return 'Все в норме';
    } else if (bmiresult < 18.5) {
      return 'Слишком мало';
    }
    return null;
  }
}
