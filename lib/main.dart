import 'package:flutter/material.dart';
import 'package:social_media_ui/screens/homepage.dart';
import 'package:social_media_ui/screens/notificationpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        NotificationPage.routeName: (context) => NotificationPage(),
      },
    );
  }
}
