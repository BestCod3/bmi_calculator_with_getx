import 'package:bmi_calculator_with_getx/HomePage/homeController.dart';
import 'package:bmi_calculator_with_getx/HomePage/sliderController.dart';
import 'package:bmi_calculator_with_getx/widgets/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottomBar/bottomBar.dart';
import '../ResultPage/resultPage.dart';
import '../widgets/slider.dart';
import '../widgets/weight_age.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  HomeController _homeController = Get.put(HomeController());
  SliderController _sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 17, 5, 42),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 17, 5, 42),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: const Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => CustomContainer(
                      icon: Icons.male,
                      text: 'MALE',
                      tus: _homeController.maleColor.value,
                      onTap: _homeController.male)),
                  Obx(() => CustomContainer(
                      icon: Icons.female,
                      text: 'female',
                      tus: _homeController.femaleColor.value,
                      onTap: _homeController.female)),
                ],
              ),
              Obx(() => WidgetSlider(
                    text: _homeController.num.value.toStringAsFixed(0),
                    onChanged: (double value) {
                      _homeController.slider(value);
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => WeightAgeContainer(
                      tag1: '4',
                      tag2: '3',
                      text: 'WEIGHT',
                      number: _homeController.weight.value,
                      PressedMinus: _homeController.weightminus,
                      PressedPlus: _homeController.weightplus)),
                  Obx(() => WeightAgeContainer(
                      tag2: '2',
                      tag1: '1',
                      text: 'Age',
                      number: _homeController.age.value,
                      PressedMinus: _homeController.minusAge,
                      PressedPlus: _homeController.plusAge)),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(
            text: "CALCULATE",
            onTap: () {
              Get.to(
                ResultPage(),
              );
            },
          ),
        ),
      ),
    );
  }
}
