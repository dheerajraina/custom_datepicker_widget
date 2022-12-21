import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/config.dart';
import './widgets/widgets.dart' as widgets;
import '../../controllers/home_page.controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _homeController = Get.put(HomePageStateController());
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.amber,
          constraints: BoxConstraints(maxHeight: screenHeight * 0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RichText(
                  text: TextSpan(
                      text: "Calender Widgets", style: Theme.of(context).textTheme.headline6)),
              // vSpacer(screenHeight * 0.05),
              Column(
                children: [
                  CustomButton(
                    title: "Without Preset",
                    buttonHeight: screenHeight * 0.05,
                    buttonWidth: screenWidth * 0.9,
                    clickAction: () async {
                      var response = await customDatePicker();
                      log(response.toString());
                      _homeController.selectedDateNoPreset.value = dateToString(response);
                    },
                  ),
                  Obx(() {
                    return _homeController.selectedDateNoPreset.value.length > 0
                        ? widgets.dateDisplayWidget(screenWidth, screenHeight,
                            _homeController.selectedDateNoPreset.value, context,
                            onClearPress: () => _homeController.selectedDateNoPreset.value = "")
                        : Container(height: screenHeight * 0.04);
                  }),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    title: "With 4 presets",
                    buttonHeight: screenHeight * 0.05,
                    buttonWidth: screenWidth * 0.9,
                    clickAction: () async {
                      var response =
                          await customDatePicker(presets: widgets.fourPresets(screenHeight, screenWidth,context));
                      log(response.toString());
                      _homeController.selectedDateFourPreset.value = dateToString(response);
                    },
                  ),
                  Obx(() {
                    return _homeController.selectedDateFourPreset.value.length > 0
                        ? widgets.dateDisplayWidget(screenWidth, screenHeight,
                            _homeController.selectedDateFourPreset.value, context,
                            onClearPress: () => _homeController.selectedDateFourPreset.value = "")
                        : Container(height: screenHeight * 0.04);
                  }),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    title: "With 6 presets",
                    buttonHeight: screenHeight * 0.05,
                    buttonWidth: screenWidth * 0.9,
                    clickAction: () async {
                      var response =
                          await customDatePicker(presets: widgets.sixPresets(screenHeight, screenWidth,context));
                      _homeController.selectedDateSixPreset.value = dateToString(response);
                    },
                  ),
                  Obx(() {
                    return _homeController.selectedDateSixPreset.value.length > 0
                        ? widgets.dateDisplayWidget(screenWidth, screenHeight,
                            _homeController.selectedDateSixPreset.value, context,
                            onClearPress: () => _homeController.selectedDateSixPreset.value = "")
                        : Container(height: screenHeight * 0.04);
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dheeraj Raina",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  Future customDatePicker({Widget? presets}) async {
    var now = DateTime.now();
    var initialDate = DateTime(now.year, now.month - 8, now.day);
    return await widgets.showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 100),
        presets: presets);
  }

  
  
}
