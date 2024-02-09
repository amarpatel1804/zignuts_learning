import 'package:flutter/material.dart';
import 'package:sample/pages/bmiShow.dart';
import 'package:sample/pages/home.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  initialRoute: '/home',
  routes: {
    '/home': (context) => Home(),
    '/bmiShow': (context) => BmiShow(),
  },
));



