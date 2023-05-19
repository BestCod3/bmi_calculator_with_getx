import 'package:bmi_calculator_with_getx/HomePage/sliderController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../HomePage/homeController.dart';

class WidgetSlider extends StatelessWidget {
  WidgetSlider({Key? key, required this.text, required this.onChanged})
      : super(key: key);
  // SliderController _sliderController = Get.put(SliderController());

  final String text;
  final Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.84,
      height: MediaQuery.of(context).size.height * 0.20,
      decoration: BoxDecoration(
          color: Color.fromRGBO(10, 4, 22, 0.941),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'HEIGHT',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  Text(
                    'cm',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              Slider(
                  value: double.parse(text),
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  thumbColor: Color(0xffFF0F65),
                  max: 220,
                  onChanged: onChanged),
            ],
          ), //withOpacity-прозрачность
        ],
      ),
    );
  }
}
