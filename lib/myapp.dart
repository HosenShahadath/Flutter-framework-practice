import 'package:flutter/material.dart';
import 'package:flutter_framework_practice/section2/listview%20builder%204.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewBuilder4(),
    );
  }
}
