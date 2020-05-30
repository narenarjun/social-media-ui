import 'package:flutter/material.dart';

Widget videoContainer({String vimageURL}) {
  return Container(
    width: 270,
    padding: EdgeInsets.all(14),
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(18),
      image: vimageURL != null
          ? DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(vimageURL),
            )
          : null,
    ),
    child: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.black38,
            blurRadius: 10,
          )
        ],
      ),
      child: Icon(Icons.play_arrow, color: Colors.black),
    ),
  );
}
