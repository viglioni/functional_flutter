import 'package:flutter/material.dart';
import 'package:functionalflutter/aux_funcs/aux_funcs.dart';

Stream<int> numberStream() async*  {
  final range = new List<int>.generate(10000, (i) => i);
  for (int x in range) {
    if(x == 0) await wait(5);
    yield x;
    await wait(2);
  }
}
