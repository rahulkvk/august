import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery:true,
      debugShowCheckedModeBanner: false,
      home: Stackt(),
    ),
  ));
}
class Stackt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: Container(color: Colors.lightGreenAccent,height:500,width:500,)),
          Positioned(child: Container(color: Colors.blue,height: 100,width: 100,),top: 350,left: 20,),
          Positioned(child: Container(color: Colors.redAccent,height: 100,width: 100,),left: 250,top: 350,right: 20,),
        ],
      ),
    );
  }

}