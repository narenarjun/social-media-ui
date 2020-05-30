import 'package:flutter/material.dart';
import 'package:social_media_ui/constants/appconstants.dart';

Widget badge(int count) {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
    decoration: BoxDecoration(
      color: Colors.orange.withOpacity(0.1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      count.toString(),
      style: TextStyle(
        color: AppColors.kindOfOrange,
        fontSize: 20,
      ),
    ),
  );
}
