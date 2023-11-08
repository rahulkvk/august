import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Navt(),
    ),
  ));
}
class Navt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        bottom: TabBar(tabs: [
          Tab(text:"Laumchs"),
          Tab(text: "Cart")
        ],),
      ),
      body: Text("welcome"),

    );
  }

}
