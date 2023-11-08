import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Loginpage.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  )); //sample is classname
}


class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Myappstate();

}
class Myappstate extends State<Myapp>{
  @override
  void initState() {
  Timer(Duration(seconds: 5),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Myapp",)),
      body: Text("Welcome"),

    );
  }

  }
