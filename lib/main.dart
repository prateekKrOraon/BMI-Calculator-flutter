import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF6055CD),
        accentColor: Color(0xFF7265E3),
        scaffoldBackgroundColor: Colors.white, //Color(0xFFE0DDF0),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF7265E3),
          foregroundColor: Colors.white
        ),
      ),
      home: InputPage(),
    );
  }
}