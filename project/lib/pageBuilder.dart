import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:project/pagview.dart';

class PageBuilder extends StatefulWidget {
  @override
  _PageBuilderState createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    controller.addListener((){
      setState(() {
        currentPageValue = controller.page;
      });
    });

    return Scaffold(
      appBar: AppBar(title: Text("Confessin",style: TextStyle(color: Colors.white))),
      body: PageView.builder(
        controller: controller,
        itemBuilder: (context, position){
          return Pageviews(
            currentPageValue, 
            position, 
            words[position]['word'], 
            words[position]['color']
          );
        },
        itemCount: words.length,
      )
    );
  }
  List words =[
    {
      "word" : "Hello guss",
      "color" : RandomColor().randomColor(
        colorBrightness : ColorBrightness.dark
      )
    },{
      "word" : "Hello guss",
      "color" : RandomColor().randomColor(
        colorBrightness : ColorBrightness.light
      )
    },{
      "word" : "Hello guss",
      "color" :RandomColor().randomColor(
        colorBrightness : ColorBrightness.dark
      )
    },{
      "word" : "Hello guss",
      "color" :RandomColor().randomColor(
        colorBrightness : ColorBrightness.dark
      )
    }
  ];  
}