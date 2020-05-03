import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';
import '../aux_funcs/aux_funcs.dart';


enum StateActions { GetNewName, CounterPP }

Map appReducer (Map state, dynamic action) {
  
  switch(action){
    case StateActions.GetNewName: {
      return {...state, "counter" : state["counter"] + 1, "startUpName" : getRandomStartUpName() };
    }
    break;
    default: {
      return state;
    }
  }
}


