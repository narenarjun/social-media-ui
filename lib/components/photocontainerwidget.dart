import 'package:flutter/material.dart';

Widget photoContainer({String imageURL}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(18),
        image: imageURL != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageURL),
              )
            : null,
      ),
      child: imageURL == null
          ? Icon(Icons.add, size: 45, color: Colors.grey.withOpacity(0.35))
          : null,
    ),
  );
}
