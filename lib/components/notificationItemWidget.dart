import 'package:flutter/material.dart';

Widget notificationItem(
    {@required String postImageURL,
    @required String usrname,
    @required String commentTxt,
    @required String postedAgo}) {
  return Row(
    children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          postImageURL,
          height: 70,
          width: 70,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(width: 20),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$usrname commented on your post: "$commentTxt "',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$postedAgo',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
      SizedBox(width: 40),
    ],
  );
}
