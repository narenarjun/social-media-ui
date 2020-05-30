import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/widgets.dart';
import '../constants/appconstants.dart';

class NotificationPage extends StatefulWidget {
  static const String routeName = "/NOTIFICATIONPAGE";

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  String crntFilter = 'Today';
  final filters = ["Today", "Last Week"];

  final List<Map<String, String>> infoList = [
    {
      "usrname": "haskell",
      'comnt': "stunning",
      "cmntage": "10 hrs ago",
    },
    {
      "usrname": "dashcast",
      'comnt': "wowwwwwww",
      "cmntage": "1 hrs ago",
    },
    {
      "usrname": "Elixir",
      'comnt': "cute",
      "cmntage": "2 hrs ago",
    },
    {
      "usrname": "Gatsby",
      'comnt': "yayyyyyyyy",
      "cmntage": "10 hrs ago",
    },
    {
      "usrname": "VsCode",
      'comnt': "wonderful",
      "cmntage": "2s ago",
    },
  ];

  final postImagesLinks = [
    postImageLink1,
    postImageLink2,
    postImageLink3,
    postImageLink4,
    postImageLink5,
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
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Notifications",
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
                        badge(42),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[300],
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.smoothBlue,
                          size: 26,
                        ),
                        hintText: 'Search for name',
                        hintStyle: TextStyle(
                            fontSize: 20, color: Colors.grey.shade400),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.fromLTRB(30, 15, 30, 20),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: filters.length,
                      separatorBuilder: (_, __) => SizedBox(width: 40),
                      itemBuilder: (context, index) {
                        final filter = filters[index];
                        bool active = crntFilter == filter;
                        return Text(
                          filter.toUpperCase(),
                          style: TextStyle(
                            color: active
                                ? AppColors.smoothBlue
                                : Colors.grey.shade400,
                            fontSize: 18,
                            letterSpacing: 0.4,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(42, 50, 42, 42),
                    decoration: BoxDecoration(
                      color: AppColors.scrollSheet,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      separatorBuilder: (_, __) => SizedBox(height: 46),
                      itemCount: postImagesLinks.length,
                      itemBuilder: (context, index) {
                        return notificationItem(
                          postImageURL: postImagesLinks[index],
                          usrname: infoList[index]["usrname"],
                          commentTxt: infoList[index]["comnt"],
                          postedAgo: infoList[index]["cmntage"],
                        );
                      },
                    ),
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
