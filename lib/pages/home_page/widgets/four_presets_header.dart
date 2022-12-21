import 'package:custom_datepicker_widget/config/buttons.dart';
import 'package:custom_datepicker_widget/config/pallete.dart';
import 'package:custom_datepicker_widget/controllers/home_page.controller.dart';
import '../../../utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget fourPresets(double screenHeight, double screenWidth,BuildContext context) {
    final _homeController =Get.find<HomePageStateController>();
    _homeController.indexClicked.value = double.infinity;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return CustomButton(
                  title: "Never ends",
                  buttonHeight: screenHeight * 0.05,
                  buttonWidth: screenWidth * 0.4,
                  clickAction: () {
                    _homeController.indexClicked.value =
                        _homeController.indexClicked.value == 0 ? double.infinity : 0;

                    _homeController.indexClicked.value == 0 ? presetFunction(0, context) : null;
                    Future.delayed(Duration(milliseconds: 50), () {
                      Navigator.pop(context);
                    });
                  },
                  buttonColor: _homeController.indexClicked.value == 0
                      ? Pallete().darkBlue
                      : Pallete().lightBlue,
                  textColor: _homeController.indexClicked.value == 0
                      ? Pallete().customWhite
                      : Pallete().darkBlue,
                );
              }),
              Obx(() {
                return CustomButton(
                  title: "15 Days later",
                  buttonHeight: screenHeight * 0.05,
                  buttonWidth: screenWidth * 0.4,
                  clickAction: () {
                    _homeController.indexClicked.value =
                        _homeController.indexClicked.value == 1 ? double.infinity : 1;

                    _homeController.indexClicked.value == 1 ? presetFunction(1, context) : null;

                    Future.delayed(Duration(milliseconds: 50), () {
                      Navigator.pop(context);
                    });
                  },
                  buttonColor: _homeController.indexClicked.value == 1
                      ? Pallete().darkBlue
                      : Pallete().lightBlue,
                  textColor: _homeController.indexClicked.value == 1
                      ? Pallete().customWhite
                      : Pallete().darkBlue,
                );
              })
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() {
                return CustomButton(
                  title: "30 Days later",
                  buttonHeight: screenHeight * 0.05,
                  buttonWidth: screenWidth * 0.4,
                  clickAction: () {
                    _homeController.indexClicked.value =
                        _homeController.indexClicked.value == 2 ? double.infinity : 2;

                    _homeController.indexClicked.value == 2 ? presetFunction(2, context) : null;
                    _homeController.indexClicked.value == 2 ? presetFunction(2, context) : null;
                    Future.delayed(Duration(milliseconds: 50), () {
                      Navigator.pop(context);
                    });
                  },
                  buttonColor: _homeController.indexClicked.value == 2
                      ? Pallete().darkBlue
                      : Pallete().lightBlue,
                  textColor: _homeController.indexClicked.value == 2
                      ? Pallete().customWhite
                      : Pallete().darkBlue,
                );
              }),
              Obx(() {
                return CustomButton(
                  title: "60 Days later",
                  buttonHeight: screenHeight * 0.05,
                  buttonWidth: screenWidth * 0.4,
                  clickAction: () {
                    _homeController.indexClicked.value =
                        _homeController.indexClicked.value == 3 ? double.infinity : 3;

                    _homeController.indexClicked.value == 3 ? presetFunction(3, context) : null;
                    _homeController.indexClicked.value == 3 ? presetFunction(3, context) : null;

                    Future.delayed(Duration(milliseconds: 50), () {
                      Navigator.pop(context);
                    });
                  },
                  buttonColor: _homeController.indexClicked.value == 3
                      ? Pallete().darkBlue
                      : Pallete().lightBlue,
                  textColor: _homeController.indexClicked.value == 3
                      ? Pallete().customWhite
                      : Pallete().darkBlue,
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
