import 'package:flutter/material.dart';
import 'package:functionalflutter/routes/stream_counter/stream_sender.dart';

Scaffold StreamCounter(context) => Scaffold(
  appBar: AppBar(title: Text("Stream Counter")),
  body: StreamBuilder<int> (
    stream: numberStream(),
    builder: (context, snapshot) {
      if(!snapshot.hasData) {
        return Center(child: CircularProgressIndicator());
      }
      else {
        return
        Column (
          children: [
            Number(snapshot.data),
            NumberProperties(snapshot.data),
        ]);
      }
    }
));


Widget Number (n) =>
Expanded(
  flex: 2,
  child: 
  Center(child: Text(n.toString() , style: TextStyle(fontSize: 80))));


Widget NumberProperties (n) =>
Expanded(
  flex: 5,
  child: Row(
    children: [
      Expanded(
        child: Column(
          children: [
            PropertyText("is ${_oddOrEven(n)}"),
            ...[3, 5, 7, 11, 13].map((m) => PropertyText(_isDivisibleBy(n,m))),
          ]))]));

Widget PropertyText (String text) =>
  Row(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 6, top: 6),
        child: Text( text , style: TextStyle(fontSize: 20)))
  ]);




/*
 * Helpers
 */

 String _oddOrEven (int n) => n % 2 == 0 ? "even" : "odd";

 String _isDivisibleBy(int n, int m) =>
 n % m == 0 ? "is divisible by $m" : "is not divisible by $m";
