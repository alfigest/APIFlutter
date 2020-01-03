import 'package:flutter/material.dart';

class Pag_screen extends StatefulWidget {
  @override
  _Pag_screenState createState() => _Pag_screenState();
}

class _Pag_screenState extends State<Pag_screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confeddin"),

      ),
      body: PageView(children: <Widget>[
        Container(
          color: Colors.pink,
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color:Colors.deepPurple,
        )
       ]
     ),
    );
  }
}