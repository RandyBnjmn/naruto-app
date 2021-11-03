import 'package:flutter/material.dart';
import 'package:naruto_shippuden_app/screens/about_screen.dart';
import 'package:naruto_shippuden_app/screens/moments_details.dart';
import 'package:naruto_shippuden_app/screens/screens.dart';

Map<String, WidgetBuilder> getRouterApplication() {
  return <String, WidgetBuilder>{
    'home': (BuildContext context) => HomeScreen(),
    'details': (BuildContext context) => DetailsScreen(),
    'mylife': (BuildContext context) => MyLife(),
    'about': (BuildContext context) => AboutScreen(),
    'moments': (BuildContext context) => MomentsDetails(),
  };
}
