//import 'package:daily_practice/form_page.dart';
//import 'package:daily_practice/form_validation.dart';
import 'package:daily_practice/gridv.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridv(),
    );
  }
}