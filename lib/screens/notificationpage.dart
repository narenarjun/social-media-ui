import 'package:flutter/material.dart';
import 'package:social_media_ui/components/badgeWidget.dart';
import 'package:social_media_ui/constants/appconstants.dart';

class NotificationPage extends StatefulWidget {
  static const String routeName = "/NOTIFICATIONPAGE";

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String selected = 'Chat';
  final filters = [
    "Chat",
    "Featured",
    "Popular",
    "Following",
  ];

  final images = [
    null,
  ];

  final Column menuIcon = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(color: Colors.black, height: 2.5, width: 14),
      SizedBox(height: 5),
      Container(color: Colors.black, height: 2.5, width: 24)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(onTap: () => Navigator.pop(context), child: menuIcon),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        profilePic,
                        width: 34,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Notifications",
                          style: TextStyle(
                            fontSize: 38,
                            color: AppColors.smoothBlue,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(width: 20),
                        badge(42),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
// ! this is where the page widgets need to be filled

                  Container(
                    color: Colors.greenAccent,
                    child: Text("let's start the notification Page"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
