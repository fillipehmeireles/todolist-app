import 'package:flutter/material.dart';
import '../text/primary_text.dart';
import '../text/secondary_text.dart';

class PrimaryCard extends Card {
  PrimaryCard(
      {super.key,
      required String titleText,
      required int tasksNumber,
      required Icon icon,
      required Color boxColor})
      : super(
            elevation: 2,
            child: SizedBox(
                width: 160,
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(22),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: boxColor),
                        child: icon),
                    PrimaryText(
                      text: titleText,
                      fontWeight: FontWeight.bold,
                    ),
                    SecondaryText(text: '$tasksNumber tasks')
                  ],
                )));
}
