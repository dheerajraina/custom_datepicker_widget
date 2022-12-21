import 'dart:developer';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.title,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.clickAction,
      this.buttonColor,
      this.textColor});

  double buttonHeight;
  double buttonWidth;
  String title;
  Color? buttonColor ;
  Color? textColor;
  final clickAction;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(()async => await await clickAction()),
      child: Container(
          height: buttonHeight,
          width: buttonWidth,
          decoration: BoxDecoration(
              color: buttonColor??Theme.of(context).primaryColorDark, borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            title,
            style:  Theme.of(context).textTheme.button!.copyWith(color:textColor ?? Colors.white),
          ))),
    );
  }
}
