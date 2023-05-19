import 'package:bmi_calculator_with_getx/widgets/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<Color> maleColor = inactiveColor.obs;
  Rx<Color> femaleColor = inactiveColor.obs;
  Rx<int> weightnum = 0.obs;
  Rx<int> weight = 50.obs;
  Rx<int> age = 20.obs;
  Rx<double> num = 50.0.obs;
  void slider(slider) {
    num.value = slider;
  }

  void male() {
    maleColor.value = activeColor;
    femaleColor.value = inactiveColor;
  }

  void female() {
    femaleColor.value = activeColor;
    maleColor.value = inactiveColor;
  }

  void weightminus() {
    weight.value--;
  }

  void weightplus() {
    weight.value++;
  }

  void minusAge() {
    age.value--;
  }

  void plusAge() {
    age.value++;
  }
}
