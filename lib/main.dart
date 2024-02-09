import 'package:BMI_Tracker/pages/addDetails.dart';
import 'package:BMI_Tracker/pages/bmiShow.dart';
import 'package:flutter/material.dart';
import 'package:BMI_Tracker/pages/home.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/bmiShow': (context) => BmiShow(),
    '/addDetails':(context)=>AddDetails(),
  },
));



