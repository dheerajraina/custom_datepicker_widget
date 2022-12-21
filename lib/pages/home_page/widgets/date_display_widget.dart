import 'package:custom_datepicker_widget/config/pallete.dart';
import 'package:flutter/material.dart';
Widget dateDisplayWidget(screenWidth, screenHeight, dateString,BuildContext context, {final onClearPress}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth * 0.5,
        height: screenHeight * 0.03,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.calendar_month,
              color: Pallete().darkBlue,
              size: screenHeight * 0.03,
            ),
            RichText(
                text: TextSpan(
                    text: dateString,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Pallete().darkBlue))),
            InkWell(
                onTap: onClearPress ?? null,
                child: Icon(
                  Icons.clear,
                  color: Pallete().darkBlue,
                  size: screenHeight * 0.03,
                )),
          ],
        ),
      ),
    );
  }