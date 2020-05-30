import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/widgets.dart';
import '../constants/appconstants.dart';
import 'notificationpage.dart';

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

  final imagesLinksList = [
    null,
    imageLink1,
    imageLink2,
    imageLink3,
    imageLink4,
    imageLink5,
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
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        profilePic,
                        width: 50,
                        height: 45,
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
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Feed",
                          style: GoogleFonts.firaSansExtraCondensed(
                            textStyle: TextStyle(
                              color: AppColors.smoothBlue,
                              fontWeight: FontWeight.w600,
                              fontSize: 38,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: HomeMetricsTile(
                            color: AppColors.kindOfOrange,
                            number: 69,
                            tileName: "photos",
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: HomeMetricsTile(
                            color: AppColors.smoothred,
                            number: 15,
                            tileName: "articles",
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: HomeMetricsTile(
                            color: AppColors.smoothPurple,
                            number: 32,
                            tileName: "likes",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      separatorBuilder: (_, __) => SizedBox(width: 30),
                      itemCount: filters.length,
                      itemBuilder: (context, index) {
                        final option = filters[index];
                        bool active = option == selected;
                        final textColor = active
                            ? AppColors.kindOfOrange
                            : Colors.grey.shade500;
                        final fontWeight =
                            active ? FontWeight.bold : FontWeight.normal;
                        return FilterChip(
                          elevation: 0,
                          selected: active,
                          pressElevation: 0,
                          showCheckmark: false,
                          backgroundColor: Colors.white,
                          selectedColor: Colors.orange.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onSelected: (s) {
                            setState(() => selected = option);
                          },
                          label: Text(
                            option.toUpperCase(),
                            style: TextStyle(
                              color: textColor,
                              fontSize: 17,
                              fontWeight: fontWeight,
                              letterSpacing: 0.3,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  sectionTitleWidget("My Photos"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 110,
                    child: ListView.separated(
                      itemCount: imagesLinksList.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      separatorBuilder: (_, __) => SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        return photoContainer(imageURL: imagesLinksList[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  sectionTitleWidget("My videos"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 145,
                    child: ListView.separated(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      separatorBuilder: (_, __) => SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        final list = imagesLinksList.reversed.toList();
                        return videoContainer(
                          vimageURL: list[index],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
