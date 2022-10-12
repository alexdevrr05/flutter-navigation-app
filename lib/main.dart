import 'package:flutter/material.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/routes/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: (const Home()),
      routes: Pages.route,
    );
  }
}
