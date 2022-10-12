import 'package:flutter/material.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/pages/page1.dart';
import 'package:navigation/pages/page2.dart';
import 'package:navigation/routes/routes.dart';


abstract class Pages {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.home:(BuildContext context) => Home(),
    Routes.page1:(BuildContext context) => Page1(),
    Routes.page2: (BuildContext context) => Page2(),
  };
}


