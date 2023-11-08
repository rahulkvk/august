import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'customewidget.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Custwid(),
    ),
  ));
}
class Custwid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("widget"),
     ),
     body: Container(
       child:Custwidget(
         onpress: (){

         },
         bgclr: Colors.cyan,
         abc: Text("Customwidget"),
         //img: Image(image:NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.online-tech-tips.com%2Fgoogle-softwaretips%2Fgoogle-search-bar-widget-missing-how-to-restore-it-on-android%2F&psig=AOvVaw0tgn48HSnadCkCNQiKokMb&ust=1698739346154000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPiR5aOnnYIDFQAAAAAdAAAAABAD"),),
       ),
     ),
   );
  }

}