import 'dart:developer';

import 'package:custom_datepicker_widget/controllers/home_page.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:intl/intl.dart";

var dateFormat = DateFormat('dd MMM yyyy');
var weekDay = DateFormat('EEE');
final now = DateTime.now();

getWeekDay(DateTime date) {
  return (weekDay.format(date)).toString();
}

dateToString(DateTime selectedDate) {
  return (dateFormat.format(selectedDate)).toString();
}

presetFunction(int type, BuildContext context) {
  final _homeController = Get.find<HomePageStateController>();

  if (type == 0) {
    log("Zero");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set to never ends"),
      duration: Duration(milliseconds:200 ),
    ));
    var newDate = "Never Ends";
    _homeController.selectedDateFourPreset.value = newDate;
  }

  if (type == 1) {
    log("One");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set 15 days from now"),
       duration: Duration(milliseconds:200 ),
    ));
    var newDate = DateTime(now.year, now.month, now.day + 15);

    _homeController.selectedDateFourPreset.value = dateToString(newDate);
  }
  if (type == 2) {
    log("Two");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set 30 days from now"),
      duration: Duration(milliseconds:200 ),
    ));
    var newDate = DateTime(now.year, now.month, now.day + 30);
    _homeController.selectedDateFourPreset.value = dateToString(newDate);
  }

  if (type == 3) {
    log("Three");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set 60 days from now"),
      duration: Duration(milliseconds:200 ),
    ));
    var newDate = DateTime(now.year, now.month, now.day + 60);
    _homeController.selectedDateFourPreset.value = dateToString(newDate);
  }
  if (type == 4) {
    log("Four");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set yesterday"),
      duration: Duration(milliseconds:200 ),
    ));
    var newDate = DateTime(now.year, now.month, now.day - 1);
    _homeController.selectedDateSixPreset.value = dateToString(newDate);
  }
  if (type == 5) {
    log("Five");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set to Today"),
      duration: Duration(milliseconds:200 ),
    ));
    var newDate = now;
    _homeController.selectedDateSixPreset.value = dateToString(newDate);
  }
  if (type == 6) {
    log("Six");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set to tomorrow"),
      duration: Duration(milliseconds:200 ),
    ));
    var newDate = DateTime(now.year, now.month, now.day + 1);
    _homeController.selectedDateSixPreset.value = dateToString(newDate);
  }

  if (type == 7) {
    log("Seven");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set this saturday"),
      duration: Duration(milliseconds:200 ),
    ));

    var today = getWeekDay(now);
    int futureIncrement = 0;
    log("${today}");
    if (today == 'Sunday') futureIncrement = 6;
    if (today == 'Mon') futureIncrement = 5;
    if (today == 'Tue') futureIncrement = 4;
    if (today == 'Wed') futureIncrement = 3;
    if (today == 'Thu') futureIncrement = 2;
    if (today == 'Fri') futureIncrement = 1;

    var newDate = DateTime(now.year, now.month, now.day + futureIncrement);
    _homeController.selectedDateSixPreset.value = dateToString(newDate);
  }
  if (type == 8) {
    log("Eight");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set this sunday"),
      duration: Duration(milliseconds:200 ),
    ));
    var today = getWeekDay(now);
    int futureIncrement = 0;
    log("${today}");

    if (today == 'Mon') futureIncrement = 6;
    if (today == 'Tue') futureIncrement = 5;
    if (today == 'Wed') futureIncrement = 4;
    if (today == 'Thu') futureIncrement = 3;
    if (today == 'Fri') futureIncrement = 2;
    if (today == 'Sat') futureIncrement = 1;

    var newDate = DateTime(now.year, now.month, now.day + futureIncrement);
    _homeController.selectedDateSixPreset.value = dateToString(newDate);
  }
  if (type == 9) {
    log("Nine");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Calender set next thursday"),
      duration: Duration(milliseconds:200 ),
    ));
    var today = getWeekDay(now);
    int futureIncrement = 0;
    log("${today}");
    if (today == 'Sun') futureIncrement = 11;
    if (today == 'Mon') futureIncrement = 10;
    if (today == 'Tue') futureIncrement = 9;
    if (today == 'Wed') futureIncrement = 8;
    if (today == 'Thu') futureIncrement = 7;
    if (today == 'Fri') futureIncrement = 6;
    if (today == 'Sat') futureIncrement = 5;

    var newDate = DateTime(now.year, now.month, now.day + futureIncrement);
    _homeController.selectedDateSixPreset.value = dateToString(newDate);
  }
}
