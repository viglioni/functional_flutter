import 'package:flutter/material.dart';
import 'package:functionalflutter/states/states.dart';
import 'package:functionalflutter/routes/routes.dart';


Scaffold HomePage(context) => Scaffold(
  appBar: AppBar(title: Text("Functional Flutter")),
  body: Center( child:
    Column (
      children: [
        goToRoute (context, "/startupname", "StartUp Names"),
        goToRoute (context, "/animatewidget", "Animate Widget"),
      ]
)));

