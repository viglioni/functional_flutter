import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../states/states.dart';



Scaffold HomePage() => Scaffold(
  appBar: AppBar(title: Text("random startup names")),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[ randomName()],
    )
  ),
);


final generatedName = StoreConnector<Map,String>(
  converter: (store) => store.state["startUpName"],
  builder: (context, startUpName) => Text(
    startUpName,
    style: TextStyle(fontSize: 48, ),
  )
);

final namesCounter = StoreConnector<Map, String>(
  converter: (store) => store.state["counter"].toString(),
  builder: (context, count) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child:
      Text(
        "you have read: $count names",
        style: TextStyle(fontSize: 11 )
      )
    );
  },
);

final getNewNameButton = StoreConnector<Map, VoidCallback>(
  converter: (store) {
    return () => store.dispatch(StateActions.GetNewName);
  },
  builder: (context, callback) {
    return RaisedButton(
      // Attach the `callback` to the `onPressed` attribute
      onPressed: callback,
      color: Colors.purple,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Get a new name",
          style: TextStyle(fontSize: 30, color: Colors.white),
        )
      )
    );
  },
);

Widget randomName(){
  return Column(
    children: [
      generatedName,
      namesCounter,
      getNewNameButton,
    ]
  );
}






