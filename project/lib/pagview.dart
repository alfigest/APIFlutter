import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pageviews extends StatefulWidget {
final currentPageValue, position, word, color;

Pageviews(
  this.currentPageValue,
  this.position,
  this.word,
  this.color
);

  @override
  _PageviewsState createState() => _PageviewsState(currentPageValue, position, word, color);
}

class _PageviewsState extends State<Pageviews> {
final currentPageValue, position, word, color;

_PageviewsState(
  this.currentPageValue,
  this.position,
  this.word,
  this.color
);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..rotateX(currentPageValue - position),
      child: Container(
        color: this.color,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(45),
            child: Text(
              "${this.word}",
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center
            )),
        )),
    );
  }
}