import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/appconstants.dart';

Widget sectionTitleWidget(String text) {
  return Padding(
    padding: EdgeInsets.only(left: 30),
    child: Text(
      text,
      style: GoogleFonts.firaSansExtraCondensed(
        textStyle: TextStyle(
          color: AppColors.smoothBlue,
          fontWeight: FontWeight.w600,
          fontSize: 22,
          letterSpacing: 0.5,
        ),
      ),
    ),
  );
}
