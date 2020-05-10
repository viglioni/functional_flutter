import 'package:flutter/material.dart';
import 'package:functionalflutter/routes/startup_name/startup_name.dart';
import 'package:functionalflutter/routes/home.dart';
import 'package:functionalflutter/routes/animate_widget/animate_widget.dart';

final routes = MaterialApp(
  initialRoute: '/animatewidget',
  routes: {
    '/': (context) => HomePage(context),
    '/startupname' : (context) => StartupName(context),
    '/animatewidget' : (context) => AnimateWidget (context),

  },
  theme: ThemeData( primaryColor: Colors.purple ));



Widget goToRoute(context, route, text) =>
Padding (
  padding: EdgeInsets.all(10.0),
  child: RaisedButton (
    onPressed: () => Navigator.pushNamed(context, route),
    color: Colors.purple,
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 30, color: Colors.white)))));
