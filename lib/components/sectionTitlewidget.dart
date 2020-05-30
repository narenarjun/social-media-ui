import 'package:flutter/material.dart';
import 'package:social_media_ui/constants/appconstants.dart';

Widget sectionTitleWidget(String text) {
  return Padding(
    padding: EdgeInsets.only(left: 30),
    child: Text(
      text,
      style: TextStyle(
        color: AppColors.smoothBlue,
        fontWeight: FontWeight.w600,
        fontSize: 22,
        letterSpacing: 0.5,
      ),
    ),
  );
}
