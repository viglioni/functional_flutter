import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import '../aux_funcs/aux_funcs.dart';


enum StateActions { GetNewName, CounterPP }

Map stateReducer (Map state, dynamic action) {
  switch(action){
    case StateActions.GetNewName: {
      return {...state, "counter" : state["counter"] + 1, "startUpName" : getRandomStartUpName() };
    }
    break;
    default: {
      return state;
}}}



Widget useStateWidget(String stateName, Function widget, {Function stateConverter = identity}) =>
StoreConnector(
  converter: (store) => stateConverter(store.state[stateName]),
  builder: (context, state) =>  widget(state));


Widget setStateWidget(dynamic action, Function widget) =>
StoreConnector(
  converter: (store) => store.dispatch(action),
  builder: (context, callback) => widget(callback));



