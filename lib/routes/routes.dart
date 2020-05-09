import 'package:flutter/material.dart';
import 'package:functionalflutter/routes/startup_name.dart';
import 'package:functionalflutter/routes/home.dart';

final routes = MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomePage(context),
    'startupname' : (context) => StartupName(context),
  },
  theme: ThemeData(
    primaryColor: Colors.purple,
  )
);
