import 'package:flutter/material.dart';

import '../../appstyle/app_fonts.dart';

class PrimaryText extends Text {
  PrimaryText(
      {super.key,
      required String text,
      double? fontSize,
      FontWeight? fontWeight})
      : super(text,
            style: AppFonts.primaryFont(
                textStyle: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: AppFonts.primaryColor)));
}
