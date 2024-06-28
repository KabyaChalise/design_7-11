import 'package:design/Design/dgnFive.dart';
import 'package:design/Design/dgnFour.dart';
import 'package:design/Design/dgnOne.dart';
import 'package:design/Design/dgnSeven.dart';
import 'package:design/Design/dgnSix.dart';
import 'package:design/Design/dgnThree.dart';
import 'package:design/Design/dgnTwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dgnsix(),
    );
  }
}
