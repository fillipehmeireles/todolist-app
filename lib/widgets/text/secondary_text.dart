import 'package:flutter/cupertino.dart';

import '../../appstyle/app_fonts.dart';

class SecondaryText extends Text {
  SecondaryText(
      {super.key,
      required String text,
      double? fontSize,
      FontWeight? fontWeight})
      : super(text,
            style: AppFonts.primaryFont(
                textStyle: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: AppFonts.secondaryColor)));
}
