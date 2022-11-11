import 'package:flutter/material.dart';
import '../text/primary_text.dart';
import '../text/secondary_text.dart';

class PrimaryCard extends InkWell {
  PrimaryCard(
      {super.key,
      required String titleText,
      required int tasksNumber,
      required IconData icon,
      required Color iconColor,
      required Color boxColor,
      required void Function() onPress})
      : super(
            borderRadius: BorderRadius.circular(3),
            onTap: onPress,
            child: Card(
                elevation: 2,
                margin: const EdgeInsets.all(10),
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
                            child: Icon(
                              icon,
                              color: iconColor,
                              size: 18,
                            )),
                        PrimaryText(
                          text: titleText,
                          fontWeight: FontWeight.bold,
                        ),
                        SecondaryText(text: '$tasksNumber tasks')
                      ],
                    ))));
}
