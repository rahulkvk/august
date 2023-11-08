import 'package:flutter/material.dart';

class Custwidget extends StatelessWidget{
   final Text ?abc;
   final Color ?bgclr;
   final Image ?img;
   VoidCallback onpress;

   Custwidget({this.abc,this.bgclr,this.img,required this.onpress});

   //class te name(this.parameters) required undekil{}vennam

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: bgclr,
        child: ListTile(
          leading: img,
          title: abc,
          onTap: onpress,
        ),
      ),
    );
  }

}