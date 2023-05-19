import 'package:bmi_calculator_with_getx/HomePage/homeView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BMICalculate());
}

class BMICalculate extends StatelessWidget {
  const BMICalculate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
