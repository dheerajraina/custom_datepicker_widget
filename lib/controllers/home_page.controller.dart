import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomePageStateController extends GetxController {
  var selectedDateNoPreset = "".obs;
  var selectedDateFourPreset = "".obs;
  var selectedDateSixPreset = "".obs;
  var initialCalenderDate=DateTime.now().obs;
  
  var indexClicked = double.infinity.obs;
}
