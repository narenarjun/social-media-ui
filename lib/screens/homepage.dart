import 'package:flutter/material.dart';
import 'package:social_media_ui/constants/appconstants.dart';
import 'package:social_media_ui/screens/notificationpage.dart';

import '../components/widgets.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  InkWell(
                      onTap: () => Navigator.pushNamed(
                          context, NotificationPage.routeName),
                      child: menuIcon),
                  InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, NotificationPage.routeName),
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
                          "Feed",
                          style: TextStyle(
                            fontSize: 38,
                            color: AppColors.smoothBlue,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "is this a social media?",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  HomeMetricsTile(
                    color: AppColors.kindOfOrange,
                    number: 69,
                    tileName: "photos",
                  ),
                  SizedBox(height: 10),
                  sectionTitleWidget("My Photos"),
                  SizedBox(height: 20),
                  Container(
                    height: 110,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  sectionTitleWidget("My videos"),
                  SizedBox(
                    height: 20,
                  ),
                  videoContainer(
                    vimageURL: imageLink2,
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
