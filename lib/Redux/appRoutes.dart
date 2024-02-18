import 'package:flutter/material.dart';
import '../Flow/HomePage/HomePage.dart';
import '../Flow/ProfilePage/ProfilePage.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => HomePage(),
    '/profile': (context) => ProfilePage()
  };
}