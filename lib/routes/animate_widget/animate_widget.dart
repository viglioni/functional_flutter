import 'package:flutter/material.dart';

Scaffold AnimateWidget(context) => Scaffold(
  appBar: AppBar(title: Text("Animate Widget")),
  body: GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailedScreen(context);
      }));
    },
    child: Center (
      child: Column(
        children: [
          getImage()
        ]
))));


Image getImage () => Image.network('https://picsum.photos/250?image=9');

Scaffold DetailedScreen(context) => Scaffold(
  body: GestureDetector(
    child: Center(
      child: Hero(
        tag: 'imageHero',
        child: getImage()
      ),
    ),
    onTap: () {
      Navigator.pop(context);
    },
  ));
