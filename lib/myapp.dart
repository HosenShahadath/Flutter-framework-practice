import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section%205/material%20button/material%20button%202.dart';
import 'package:flutter_framework_practice/section%205/material%20button/material%20button.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialButtonApp2(),
    );
  }
}
