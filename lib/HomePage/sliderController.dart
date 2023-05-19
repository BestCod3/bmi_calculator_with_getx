import 'package:get/get.dart';

class SliderController extends GetxController {
  Rx<double> num = 50.0.obs;
  slider(slider) {
    num.value = slider;
  }
}
