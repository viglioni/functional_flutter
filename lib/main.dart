
import 'package:flutter/material.dart';
import './pages/home.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import './states/states.dart';
import './aux_funcs/aux_funcs.dart';


void main() => runApp(builder());

Widget builder(){
  final store = Store<Map>(stateReducer, initialState: {"counter": 1, "startUpName" :  getRandomStartUpName()});
  return StoreProvider<Map>(
    store: store,
    child: MaterialApp(
      title: 'appzera',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: HomePage()
    )
  );
}


// uncomment for development - using class MyApp allows hot reload
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => builder();
// }





