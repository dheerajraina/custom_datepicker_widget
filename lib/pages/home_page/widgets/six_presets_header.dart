import 'package:custom_datepicker_widget/config/buttons.dart';
import 'package:custom_datepicker_widget/config/pallete.dart';
import 'package:custom_datepicker_widget/controllers/home_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/functions.dart';

Widget sixPresets(double screenHeight, double screenWidth, BuildContext context) {
  final _homeController = Get.find<HomePageStateController>();
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
                title: "Yesterday",
                buttonHeight: screenHeight * 0.05,
                buttonWidth: screenWidth * 0.4,
                clickAction: () {
                  _homeController.indexClicked.value =
                      _homeController.indexClicked.value == 4 ? double.infinity : 4;

                  _homeController.indexClicked.value == 4 ? presetFunction(4, context) : null;
                  Future.delayed(Duration(milliseconds: 50), () {
                    Navigator.pop(context);
                  });
                },
                buttonColor: _homeController.indexClicked.value == 4
                    ? Pallete().darkBlue
                    : Pallete().lightBlue,
                textColor: _homeController.indexClicked.value == 4
                    ? Pallete().customWhite
                    : Pallete().darkBlue,
              );
            }),
            Obx(() {
              return CustomButton(
                title: "Today",
                buttonHeight: screenHeight * 0.05,
                buttonWidth: screenWidth * 0.4,
                clickAction: () {
                  _homeController.indexClicked.value =
                      _homeController.indexClicked.value == 5 ? double.infinity : 5;

                  _homeController.indexClicked.value == 5 ? presetFunction(5, context) : null;
                  Future.delayed(Duration(milliseconds: 50), () {
                    Navigator.pop(context);
                  });
                },
                buttonColor: _homeController.indexClicked.value == 5
                    ? Pallete().darkBlue
                    : Pallete().lightBlue,
                textColor: _homeController.indexClicked.value == 5
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
                title: "Tomorrow",
                buttonHeight: screenHeight * 0.05,
                buttonWidth: screenWidth * 0.4,
                clickAction: () {
                  _homeController.indexClicked.value =
                      _homeController.indexClicked.value == 6 ? double.infinity : 6;

                  _homeController.indexClicked.value == 6 ? presetFunction(6, context) : null;
                  Future.delayed(Duration(milliseconds: 50), () {
                    Navigator.pop(context);
                  });
                },
                buttonColor: _homeController.indexClicked.value == 6
                    ? Pallete().darkBlue
                    : Pallete().lightBlue,
                textColor: _homeController.indexClicked.value == 6
                    ? Pallete().customWhite
                    : Pallete().darkBlue,
              );
            }),
            Obx(() {
              return CustomButton(
                title: "This Saturday",
                buttonHeight: screenHeight * 0.05,
                buttonWidth: screenWidth * 0.4,
                clickAction: () {
                  _homeController.indexClicked.value =
                      _homeController.indexClicked.value == 7 ? double.infinity : 7;

                  _homeController.indexClicked.value == 7 ? presetFunction(7, context) : null;
                  Future.delayed(Duration(milliseconds: 50), () {
                    Navigator.pop(context);
                  });
                },
                buttonColor: _homeController.indexClicked.value == 7
                    ? Pallete().darkBlue
                    : Pallete().lightBlue,
                textColor: _homeController.indexClicked.value == 7
                    ? Pallete().customWhite
                    : Pallete().darkBlue,
              );
            }),
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
                title: "This Sunday",
                buttonHeight: screenHeight * 0.05,
                buttonWidth: screenWidth * 0.4,
                clickAction: () {
                  _homeController.indexClicked.value =
                      _homeController.indexClicked.value == 8 ? double.infinity : 8;

                  _homeController.indexClicked.value == 8 ? presetFunction(8, context) : null;
                  Future.delayed(Duration(milliseconds: 50), () {
                    Navigator.pop(context);
                  });
                },
                buttonColor: _homeController.indexClicked.value == 8
                    ? Pallete().darkBlue
                    : Pallete().lightBlue,
                textColor: _homeController.indexClicked.value == 8
                    ? Pallete().customWhite
                    : Pallete().darkBlue,
              );
            }),
            Obx(() {
              return CustomButton(
                title: "Next Thursday",
                buttonHeight: screenHeight * 0.05,
                buttonWidth: screenWidth * 0.4,
                clickAction: () {
                  _homeController.indexClicked.value =
                      _homeController.indexClicked.value == 9 ? double.infinity : 9;

                  _homeController.indexClicked.value == 9 ? presetFunction(9, context) : null;
                  Future.delayed(Duration(milliseconds: 50), () {
                    Navigator.pop(context);
                  });
                },
                buttonColor: _homeController.indexClicked.value == 9
                    ? Pallete().darkBlue
                    : Pallete().lightBlue,
                textColor: _homeController.indexClicked.value == 9
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
