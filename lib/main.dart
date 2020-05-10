import 'package:flutter/material.dart';
import 'package:functionalflutter/routes/startup_name/startup_name.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:functionalflutter/states/states.dart';
import 'package:functionalflutter/aux_funcs/aux_funcs.dart';
import 'package:functionalflutter/routes/routes.dart';

void main() => runApp(builder());

Widget builder(){
  final store = initializeState({"counter": 1, "startUpName" :  getRandomStartUpName()});
  return StoreProvider<Map>(
    store: store,
    child: routes
  );
}


// // uncomment for development - using class MyApp allows hot reload
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => builder();
// }





