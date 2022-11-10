import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/appstyle/color_palette.dart';

class AppFonts {
  static Color primaryColor = AppColorPallete.deepBlue;
  static Color secondaryColor = AppColorPallete.smoothGrey;
  static TextStyle primaryFont({TextStyle? textStyle}) {
    return GoogleFonts.nunito(textStyle: textStyle);
  }
}
